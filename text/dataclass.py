import numpy as np
from datetime import datetime
import pytz


class DataClass:
    def __init__(self, name, utc_from, utc_to, time_zone="Etc/UTC"):
        self.name = name
        self.time_zone = pytz.timezone(time_zone)
        self.utc_from = datetime(*utc_from, tzinfo=self.time_zone)
        self.utc_from_timestamp = datetime(*utc_from, tzinfo=self.time_zone).timestamp()
        self.utc_to = datetime(*utc_to, tzinfo=self.time_zone)
        self.utc_to_timestamp = datetime(*utc_to, tzinfo=self.time_zone).timestamp()
        self.max_number = int(self.utc_to_timestamp - self.utc_from_timestamp) // 60

        # x = datetime(2022, 5, 20, tzinfo=pytz.timezone("Etc/UTC"))
        self.buffer = np.zeros((self.max_number, 5), dtype=np.float64)
        for i in range(self.buffer.shape[0]):
            self.buffer[i, 0] += self.utc_from_timestamp + 60 * i

        self.candles = {}
        self.time_intervals = [1, 2, 3, 4, 5, 10, 15, 30, 45, 60, 120, 180, 240, 360, 720, 1440]
        for time_interval in self.time_intervals:
            if time_interval == 1:
                self.candles[time_interval] = self.buffer
            else:
                self.candles[time_interval] = np.zeros((self.max_number//time_interval, 5), dtype=np.float64)
                for i in range(self.candles[time_interval].shape[0]):
                    self.candles[time_interval][i, 0] += self.utc_from_timestamp + 60 * time_interval * i

    def __iter__(self):
        self.index = 0
        return self

    def __next__(self):
        index = self.index
        if index < self.max_number:
            self.index += 1
            return self.buffer[index]
        else:
            raise StopIteration

    def __getitem__(self, item):
        # print(item)  # debug
        return self.buffer[item]

    def __repr__(self):
        return f"Name: {self.name}, Length: {self.max_number}, Id: {hex(id(self))}"

    def upgrade(self, data):
        # buffer reshape logic
        data_begin = data[0][0]
        data_end = data[-1][0]
        while data_begin < self.utc_from_timestamp:
            self.utc_from_timestamp -= 60 * 60 * 24
            self.utc_from = datetime.fromtimestamp(self.utc_from_timestamp, self.time_zone)
            for interval in self.time_intervals:
                tmp = np.zeros((1440//interval, 5), dtype=np.float64)
                for i in range(tmp.shape[0]):
                    tmp[i, 0] += self.utc_from_timestamp + 60 * interval * i
                self.candles[interval] = np.vstack((tmp, self.candles[interval]))
            self.buffer = self.candles[1]
        while data_end > self.utc_to_timestamp:
            self.utc_to_timestamp += 60 * 60 * 24
            self.utc_to = datetime.fromtimestamp(self.utc_to_timestamp, self.time_zone)
            for interval in self.time_intervals:
                tmp = np.zeros((1440//interval, 5), dtype=np.float64)
                for i in range(tmp.shape[0]):
                    tmp[-1 - i, 0] += self.utc_to_timestamp - 60 * interval * (i+1)  # this i+1 cost me 1.5 hours to fix
                self.candles[interval] = np.vstack((self.candles[interval], tmp))
            self.buffer = self.candles[1]

        # use a pointer for better performance, O(NlogN)->O(N)
        pointer = 0
        for _, timestamp in enumerate(self.buffer):
            if abs(timestamp[0] - data[0][0]) < 0.001:
                break
            else:
                pointer += 1
        # upgrade begin ptr
        ptr_start = pointer

        for candle in data:  # data is fetched by mt5.copy_rates_range()
            # print(candle)  # debug
            step = 0
            for step, timestamp in enumerate(self.buffer[pointer:]):
                # if step != 0: print(step)  # debug
                if abs(timestamp[0] - candle[0]) < 0.001:
                    self.buffer[pointer + step][1] = np.array(candle[1], dtype=np.float64)
                    self.buffer[pointer + step][2] = np.array(candle[2], dtype=np.float64)
                    self.buffer[pointer + step][3] = np.array(candle[3], dtype=np.float64)
                    self.buffer[pointer + step][4] = np.array(candle[4], dtype=np.float64)
                    break
                else:
                    self.buffer[pointer + step][1:5] = self.buffer[pointer + step - 1][1:5]
            pointer += (step + 1)
        # upgrade end ptr
        ptr_end = pointer
        # buffer data upgraded, refresh candles
        # print(ptr_start, ptr_end)  # debug
        self.max_number = int(self.utc_to_timestamp-self.utc_from_timestamp)//60
        self.upgrade_candle(ptr_start, ptr_end)

    def upgrade_candle(self, ptr1, ptr2):
        # Todo: candles have 0 inside
        # Todo: find pointer to accelerate
        start_time = self.buffer[ptr1, 0] - self.buffer[ptr1, 0] % (60 * 60 * 24)
        # init empty candles of various size according to self.time_intervals
        cache_candle = {interval: np.zeros([interval, 5], dtype=np.float64) for interval in self.time_intervals}
        cache_pointer = {interval: 0 for interval in self.time_intervals}
        for interval in self.time_intervals:
            for ptr, tmp in enumerate(self.candles[interval]):
                if abs(start_time - tmp[0]) < 0.001:
                    cache_pointer[interval] = ptr
                    break

        ptr1 = ptr1 - ptr1 % 1440
        ptr2 -= 1
        ptr2 = ptr2 - ptr2 % 1440 + bool(ptr2 % 1440) * 1440
        ptr2 += 1
        # access self.buffer[ptr1:ptr2] once and upgrade all intervals
        for index, tick in enumerate(self.buffer[ptr1: ptr2]):  # TODO: check here, ptr2 might buggy
            for interval in self.time_intervals:
                cache_candle[interval][index % interval] = tick
                if interval - index % interval == 1:
                    if abs(cache_candle[interval][-1, 4]) < 1e-6 and interval != 1:  # current candle, not full filled
                        tail = -2
                        while abs(cache_candle[interval][tail, 4]) < 1e-6:
                            if -tail == interval:
                                break
                            tail -= 1
                        self.candles[interval][index//interval + cache_pointer[interval]] = np.array([cache_candle[interval][0, 0], cache_candle[interval][0, 1], np.max(cache_candle[interval][:, 1:]), np.min(cache_candle[interval][:tail+1, 1:]), cache_candle[interval][tail, 4]], dtype=np.float64)
                    elif abs(cache_candle[interval][0, 4]) < 1e-6 and interval != 1:  # initial candle, not full filled
                        head = 1
                        while abs(cache_candle[interval][head, 4]) < 1e-6:
                            if head == interval-1:
                                break
                            head += 1

                        self.candles[interval][index // interval + cache_pointer[interval]] = np.array(
                            [cache_candle[interval][0, 0], cache_candle[interval][head, 1],
                             np.max(cache_candle[interval][:, 1:]), np.min(cache_candle[interval][head:, 1:]),
                             cache_candle[interval][-1, 4]], dtype=np.float64)

                    else:
                        self.candles[interval][index//interval + cache_pointer[interval]] = np.array([cache_candle[interval][0, 0], cache_candle[interval][0, 1], np.max(cache_candle[interval][:, 1:]), np.min(cache_candle[interval][:, 1:]), cache_candle[interval][-1, 4]], dtype=np.float64)




if __name__ == "__main__":
    dc = DataClass("USDJPY", (2022, 5, 20), (2022, 5, 21))
    """
    
    for candle in data:  # data is fetched by mt5.copy_rates_range()
        print(candle)
        for step, timestamp in enumerate(dc.buffer):

            if abs(timestamp[0]-candle[0]) < 0.001:

                dc.buffer[step][1] = np.array(candle[1], dtype=np.float32)
                dc.buffer[step][2] = np.array(candle[2], dtype=np.float32)
                dc.buffer[step][3] = np.array(candle[3], dtype=np.float32)
                dc.buffer[step][4] = np.array(candle[4], dtype=np.float32)
                break
    """
