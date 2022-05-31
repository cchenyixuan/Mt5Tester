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

        # x = datetime(2022, 5, 20, tzinfo=pytz.timezone("Etc/UTC"))
        self.buffer = np.zeros((43200, 5), dtype=np.float64)
        for i in range(self.buffer.shape[0]):
            self.buffer[i, 0] += self.utc_from_timestamp+60*i

    def upgrade(self, data):
        # buffer reshape logic
        data_begin = data[0][0]
        data_end = data[-1][0]
        while data_begin < self.utc_from_timestamp:
            self.utc_from_timestamp -= 60*60*24
            self.utc_from = datetime.fromtimestamp(self.utc_from_timestamp, self.time_zone)
            tmp = np.zeros((1440, 5), dtype=np.float64)
            for i in range(tmp.shape[0]):
                tmp[i, 0] += self.utc_from_timestamp + 60 * i
            self.buffer = np.vstack((tmp, self.buffer))
        while data_end > self.utc_to_timestamp: # BUG TODO fix it! not utc_to_timestamp
            self.utc_to_timestamp += 60 * 60 * 24
            self.utc_to = datetime.fromtimestamp(self.utc_to_timestamp, self.time_zone)
            tmp = np.zeros((1440, 5), dtype=np.float64)
            for i in range(tmp.shape[0]):
                tmp[-1-i, 0] += self.utc_to_timestamp - 60 * i
            self.buffer = np.vstack((self.buffer, tmp))

        for candle in data:  # data is fetched by mt5.copy_rates_range()
            print(candle)
            for step, timestamp in enumerate(self.buffer):
                if abs(timestamp[0] - candle[0]) < 0.001:
                    self.buffer[step][1] = np.array(candle[1], dtype=np.float32)
                    self.buffer[step][2] = np.array(candle[2], dtype=np.float32)
                    self.buffer[step][3] = np.array(candle[3], dtype=np.float32)
                    self.buffer[step][4] = np.array(candle[4], dtype=np.float32)
                    break


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
