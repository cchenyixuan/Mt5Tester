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
        self.max_number = int(self.utc_to_timestamp-self.utc_from_timestamp)//60

        # x = datetime(2022, 5, 20, tzinfo=pytz.timezone("Etc/UTC"))
        self.buffer = np.zeros((self.max_number, 5), dtype=np.float64)
        for i in range(self.buffer.shape[0]):
            self.buffer[i, 0] += self.utc_from_timestamp + 60 * i

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
            tmp = np.zeros((1440, 5), dtype=np.float64)
            for i in range(tmp.shape[0]):
                tmp[i, 0] += self.utc_from_timestamp + 60 * i
            self.buffer = np.vstack((tmp, self.buffer))
        while data_end > self.utc_to_timestamp:
            self.utc_to_timestamp += 60 * 60 * 24
            self.utc_to = datetime.fromtimestamp(self.utc_to_timestamp, self.time_zone)
            tmp = np.zeros((1440, 5), dtype=np.float64)
            for i in range(tmp.shape[0]):
                tmp[-1 - i, 0] += self.utc_to_timestamp - 60 * i
            self.buffer = np.vstack((self.buffer, tmp))

        # use a pointer for better performance, O(NlogN)->O(N)
        pointer = 0
        for _, timestamp in enumerate(self.buffer):
            if abs(timestamp[0] - data[0][0]) < 0.001:
                break
            else:
                pointer += 1

        for candle in data:  # data is fetched by mt5.copy_rates_range()
            # print(candle)  # debug
            step = 0
            for step, timestamp in enumerate(self.buffer[pointer:]):
                # if step != 0: print(step)  # debug
                if abs(timestamp[0] - candle[0]) < 0.001:
                    self.buffer[pointer+step][1] = np.array(candle[1], dtype=np.float32)
                    self.buffer[pointer+step][2] = np.array(candle[2], dtype=np.float32)
                    self.buffer[pointer+step][3] = np.array(candle[3], dtype=np.float32)
                    self.buffer[pointer+step][4] = np.array(candle[4], dtype=np.float32)
                    break
            pointer += (step+1)


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