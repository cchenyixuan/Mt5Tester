import numpy as np
import ctypes

class SimpleMovingAverage:
    def __init__(self, data, length):
        self.data = data
        self.length = length
        # print(f"SMA{self.length} Initializing...")
        self.results = [data[i] for i in range(length - 1)] + [self.calculate(data[i:i + length]) for i in
                                                               range(len(data) - length + 1)]
        # print(f"SMA{self.length} Ready.")

    def calculate(self, value):
        return np.sum(value) / self.length

    def __call__(self, data):
        # # time not changed
        # if all([data[i] == self.data[i] for i in range(min([5, self.length-1]))]):
        #     self.results[-1] = self.calculate(data[-self.length:])
        # # time has changed
        # else:
        #     self.results[-1] = self.calculate(data[-self.length-1:-1])
        #     self.results.append(self.calculate(data[-self.length:]))
        #     self.results = self.results[1:]
        self.results = [data[i] for i in range(self.length - 1)] + [self.calculate(data[i:i + self.length]) for i in
                                                                    range(len(data) - self.length + 1)]

    def __getitem__(self, item):
        return self.results[item]


class ExponentialMovingAverage:
    def __init__(self, data, length, smoothing=2):
        self.data = data
        self.length = length
        self.smoothing = smoothing
        self.first_day_sma = SimpleMovingAverage(data, length).results[length - 1]
        self.results = [data[i] for i in range(length - 1)] + [self.first_day_sma]
        for i in range(length, len(data)):
            self.results.extend([self.calculate(data[i])])

    def calculate(self, value):
        return value * (self.smoothing / (1 + self.length)) + self.results[-1] * (
                    1 - self.smoothing / (1 + self.length))

    def __call__(self, data):

        self.first_day_sma = SimpleMovingAverage(data, self.length).results[self.length - 1]
        self.results = [data[i] for i in range(self.length - 1)] + [self.first_day_sma]
        for i in range(self.length, len(data)):
            self.results.extend([self.calculate(data[i])])

    def __getitem__(self, item):
        return self.results[item]


class MovingAverageConvergenceDivergence:
    def __init__(self, data, fast=12, slow=26, close=9):
        self.fast = np.array(ExponentialMovingAverage(data, fast)[:], dtype=np.float32)
        self.slow = np.array(ExponentialMovingAverage(data, slow)[:], dtype=np.float32)
        self.dif = np.array([self.fast[i] - self.slow[i] for i in range(len(data))], dtype=np.float32)
        self.close = np.array(ExponentialMovingAverage(self.dif, close)[:], dtype=np.float32)
        self.results = np.array([(self.dif[i] - self.close[i]) * 1 for i in range(len(data))], dtype=np.float32)
        self.ema_macd = np.array(ExponentialMovingAverage(self.results, 9)[:], dtype=np.float32)

        self.dea = self.close
        self.d_dif = np.array([self.dif[0]] + [self.dif[i]-self.dif[i-1] for i in range(1, self.dif.shape[0])], dtype=np.float32)
        self.d_dea = np.array([self.dea[0]] + [self.dea[i] - self.dea[i - 1] for i in range(1, self.dea.shape[0])],
                              dtype=np.float32)

    def __getitem__(self, item):
        return self.results[item]


class LinearRegression:
    def __init__(self, data, length, interval):
        self.data = data
        self.length = length
        self.interval = interval

    def regression_cal(self, length):
        derivative = np.zeros_like(self.data, dtype=np.float32)
        for i in range(0, self.data.shape[0], self.interval):
            if i < length:
                continue
            x = np.array(range(length))
            y = self.data[i - length + 1:i + 1]  # TODO: might bug, other normalization method required
            b1 = (np.sum(y * x) - length * np.mean(x) * np.mean(y)) / (
                    np.sum(x * x) - length * np.mean(x) * np.mean(x))
            b0 = np.mean(y) - b1 * np.mean(x)
            # y = b0 + b1*x
            derivative[i] = b1
        return derivative


class Integrate:
    def __init__(self, data, length):
        self.data = data
        self.length = length
        self.result = self.__call__()

    def __call__(self, *args, **kwargs):
        ans = np.zeros_like(self.data)
        for i in range(self.length-1, self.data.shape[0]):
            ans[i] = np.sum(self.data[i+1-self.length:i+1])
        return ans


class Count:
    def __init__(self, data, condition=-1):
        self.data = data
        self.condition = condition
        self.result = self.__call__()

    def __call__(self, *args, **kwargs):
        slow = -1
        fast = 0
        ans = np.zeros_like(self.data)
        for fast in range(self.data.shape[0]):
            if self.condition*self.data[fast] < 0:
                slow = fast
            ans[fast] = fast-slow
        return ans


class Variant:
    def __init__(self, data, length):
        self.data = data
        self.length = length
        self.result = self.__call__()

    def __call__(self, *args, **kwargs):
        _max = np.zeros_like(self.data)
        _min = np.zeros_like(self.data)
        ans = np.zeros_like(self.data)
        sign = 0
        for i in range(self.data.shape[0]):
            if i < self.length:
                _max[i] = np.max(self.data[:i+1])
                _min[i] = np.min(self.data[:i + 1])
                if np.argmax(self.data[:i+1]) > np.argmin(self.data[:i+1]):
                    sign = 1.0
                else:
                    sign = -1.0
            else:
                _max[i] = np.max(self.data[i-self.length:i + 1])
                _min[i] = np.min(self.data[i - self.length:i + 1])
                if np.argmax(self.data[i-self.length:i + 1]) > np.argmin(self.data[i-self.length:i + 1]):
                    sign = 1.0
                else:
                    sign = -1.0
            ans[i] = (_max[i]-_min[i])/(_max[i]+_min[i])*2*sign
        return ans


class Ascend:
    def __init__(self, data, length):
        self.data = data
        self.length = length
        self.result = self.__call__()

    def __call__(self, *args, **kwargs):
        ans = np.zeros_like(self.data)
        for i in range(self.length-1, self.data.shape[0]):
            max_id = np.argmax(self.data[i - self.length + 1:i + 1])
            min_id = np.argmin(self.data[i - self.length + 1:i + 1])
            if max_id > min_id:
                ans[i] = self.data[i - self.length + 1:i + 1][max_id] - self.data[i - self.length + 1:i + 1][min_id]
            elif max_id < min_id:
                ans[i] = self.data[i - self.length + 1:i + 1][min_id] - self.data[i - self.length + 1:i + 1][max_id]
        return ans


class Triangle:
    def __init__(self, data, length_sample, length_ignore):
        self.data = data
        self.length_sample = length_sample
        self.length_ignore = length_ignore
        self.valid_length = self.length_sample - self.length_ignore

        self.result = self.__call__()

    def __call__(self, *args, **kwargs):
        ans = np.zeros((self.data.shape[0], 2), dtype=np.float32)
        for i in range(self.data.shape[0]):
            if i < self.length_sample:
                continue
            max_id = np.argmax(self.data[i - self.length_sample:i - self.length_ignore])
            ans[i, 0] = (self.data[i] - self.data[i - self.length_sample:i - self.length_ignore][max_id]) / (
                        self.data[i])
            min_id = np.argmin(self.data[i - self.length_sample:i - self.length_ignore])
            ans[i, 1] = (self.data[i] - self.data[i - self.length_sample:i - self.length_ignore][min_id]) / (
                        self.data[i])
        return ans


class Convex:
    def __init__(self, data):
        pass


def get_data(symbol="BTCUSDT", interval="15m", start_str="15 day ago UTC"):
    client = Client("dBw27g6LP3rU3bAbGm7iHrxtsvzTR9KSL3GVcRa8ZQdqMhgCh4uWU149IEo52X5c",
                    "sQJfbMJLiYqQ5eQPXpgNiKuH7yAcVDf8xv5hTbvsv5ehVGWHbigIrxrOtDQcMnfR")
    raw_data = np.array(
                    client.futures_historical_klines(symbol=symbol, interval=interval, start_str=start_str),
                    dtype=np.float32
                )[:, 1:5]
    #np.save("200days.npy", raw_data)
    #close_buffer = np.load("buffer.npy")
    data = raw_data#np.load("market.npy")
    open = data[:, 0]
    high = data[:, 1]
    low = data[:, 2]
    close = data[:, 3]

    macd = MovingAverageConvergenceDivergence(close)
    buffer = np.zeros((close.shape[0], 24), dtype=np.float32)
    sma_5   = np.array( SimpleMovingAverage(close,   5).results, dtype=np.float32)
    sma_15  = np.array( SimpleMovingAverage(close,  15).results, dtype=np.float32)
    sma_30 = np.array(SimpleMovingAverage(close, 30).results, dtype=np.float32)
    sma_60  = np.array( SimpleMovingAverage(close,  60).results, dtype=np.float32)
    sma_200 = np.array(SimpleMovingAverage(close, 200).results, dtype=np.float32)
    sma_500 = np.array(SimpleMovingAverage(close, 500).results, dtype=np.float32)
    d_sma_5   = np.array([0] + [sma_5[i]   - sma_5[i - 1]   for i in range(1, sma_5.shape[0])  ], dtype=np.float32)
    d_sma_15  = np.array([0] + [sma_15[i]  - sma_15[i - 1]  for i in range(1, sma_15.shape[0]) ], dtype=np.float32)
    d_sma_30 = np.array([0] + [sma_30[i] - sma_30[i - 1] for i in range(1, sma_30.shape[0])], dtype=np.float32)
    d_sma_60  = np.array([0] + [sma_60[i]  - sma_60[i - 1]  for i in range(1, sma_60.shape[0]) ], dtype=np.float32)
    d_sma_200 = np.array([0] + [sma_200[i] - sma_200[i - 1] for i in range(1, sma_200.shape[0])], dtype=np.float32)
    d_sma_500 = np.array([0] + [sma_500[i] - sma_500[i - 1] for i in range(1, sma_500.shape[0])], dtype=np.float32)
    d_d_sma_15 =   np.array([0] + [d_sma_15[i] -   d_sma_15[i - 1] for i in range(1,   d_sma_15.shape[0])], dtype=np.float32)
    d_d_sma_60 =   np.array([0] + [d_sma_60[i] -   d_sma_60[i - 1] for i in range(1,   d_sma_60.shape[0])], dtype=np.float32)
    d_d_sma_200 = np.array([0] + [d_sma_200[i] - d_sma_200[i - 1] for i in range(1, d_sma_200.shape[0])], dtype=np.float32)
    d_d_sma_500 = np.array([0] + [d_sma_500[i] - d_sma_500[i - 1] for i in range(1, d_sma_500.shape[0])], dtype=np.float32)
    i_d_d_sma_60 = Integrate(d_d_sma_60, 60).result
    i_d_d_sma_500 = Integrate(d_d_sma_500, 500).result

    count_less_than_0_d_sma_15 = Count(d_sma_15, -1).result
    count_greater_than_0_d_sma_15 = Count(d_sma_15, 1).result

    max_60 = np.array([np.max(close[np.max((0, i-59)):i+1]) for i in range(close.shape[0])], dtype=np.float32)
    min_60 = np.array([np.min(close[np.max((0, i - 59)):i + 1]) for i in range(close.shape[0])],
                      dtype=np.float32)

    triangle_60_15 = Triangle(close, 60, 15)
    triangle_200_15 = Triangle(close, 200, 15)

    buffer[:, 0] = open
    buffer[:, 1] = high
    buffer[:, 2] = low
    buffer[:, 3] = close

    buffer[:, 4] = sma_15
    buffer[:, 5] = sma_60
    buffer[:, 6] = sma_200
    buffer[:, 7] = sma_500

    buffer[:, 8] = d_sma_15
    buffer[:, 9] = d_sma_60
    buffer[:, 10] = d_sma_200
    buffer[:, 11] = d_sma_500

    buffer[:, 12] = sma_5
    buffer[:, 13] = d_sma_5
    buffer[:, 14] = macd.d_dif
    buffer[:, 15] = macd.d_dea

    buffer[:, 16] = triangle_60_15.result[:, 0]
    buffer[:, 17] = triangle_60_15.result[:, 1]
    buffer[:, 18] = triangle_200_15.result[:, 0]
    buffer[:, 19] = triangle_200_15.result[:, 1]

    buffer[:, 20] = Ascend(close, 15).result
    buffer[:, 21] = Ascend(close, 60).result
    buffer[:, 22] = Ascend(close, 200).result
    buffer[:, 23] = Ascend(close, 500).result
    return buffer
    # return np.hstack((close_buffer[:, :3], np.reshape(np.array(macd.d_dif, dtype=np.float32), (close_buffer.shape[0], 1))))
    #return np.vstack((close_buffer, macd.dif, macd.dea, macd.ema_macd)).T




