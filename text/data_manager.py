# %% import
from __future__ import annotations

import time
import traceback
from datetime import datetime
# import pytz module for working with time zone
import pytz
# import the 'pandas' module for displaying data obtained in the tabular form
import pandas as pd
import numpy as np
import threading

pd.set_option('display.max_columns', 500)  # number of columns to be displayed
pd.set_option('display.width', 1500)  # max table width to display

import MetaTrader5 as mt5

# display data on the MetaTrader 5 package
print("MetaTrader5 package author: ", mt5.__author__)
print("MetaTrader5 package version: ", mt5.__version__)

from text.dataclass import DataClass


class TimeSpawnOverSizeError(BaseException):
    """
    get error code '-3'
    """
    pass


class RequestOvertimeError(BaseException):
    """
    get error code '-1'
    """
    pass


class EmptyDataError(BaseException):
    """
    get empty data
    """
    pass


# %%

class DataManager:
    """
    Manager of mt5 data.
    """

    def __init__(self, time_from=(2022, 6, 1), time_to=(2022, 6, 10), login=25115284, server="MetaQuotes-Demo",
                 password="4zatlbqx"):
        """
        init manager, connect mt5 server and get all ticks
        """
        self.upgrading = False
        self.upgraded = False
        self.pairs = {
            "AUDCAD": DataClass("AUDCAD", time_from, time_to),
            "AUDCHF": DataClass("AUDCHF", time_from, time_to),
            "AUDJPY": DataClass("AUDJPY", time_from, time_to),
            "AUDUSD": DataClass("AUDUSD", time_from, time_to),
            "CADCHF": DataClass("CADCHF", time_from, time_to),
            "CADJPY": DataClass("CADJPY", time_from, time_to),
            "CHFJPY": DataClass("CHFJPY", time_from, time_to),
            "EURAUD": DataClass("EURAUD", time_from, time_to),
            "EURCAD": DataClass("EURCAD", time_from, time_to),
            "EURCHF": DataClass("EURCHF", time_from, time_to),
            "EURGBP": DataClass("EURGBP", time_from, time_to),
            "EURJPY": DataClass("EURJPY", time_from, time_to),
            "EURUSD": DataClass("EURUSD", time_from, time_to),
            "GBPAUD": DataClass("GBPAUD", time_from, time_to),
            "GBPCAD": DataClass("GBPCAD", time_from, time_to),
            "GBPCHF": DataClass("GBPCHF", time_from, time_to),
            "GBPJPY": DataClass("GBPJPY", time_from, time_to),
            "GBPUSD": DataClass("GBPUSD", time_from, time_to),
            "USDCAD": DataClass("USDCAD", time_from, time_to),
            "USDCHF": DataClass("USDCHF", time_from, time_to),
            "USDJPY": DataClass("USDJPY", time_from, time_to),
        }
        self.candles = {}
        self.time_interval = 1

        self.time_from = time_from
        self.time_to = time_to

        self.login = login
        self.server = server
        self.password = password

        self.mt5_load_rates(time_from, time_to)
        # self.c_call()
        # self.time_from = (self.pairs['AUDCAD'].iloc[0, 5] / 1000) - (self.pairs['AUDCAD'].iloc[0, 5] / 1000) % (
        #             60 * 60 * 24)
        auto_upgrade = threading.Thread(target=self.c_call)
        auto_upgrade.setDaemon(True)
        auto_upgrade.start()

    def mt5_load_rates(self, time_from: tuple, time_to: tuple) -> None:
        # establish connection to MetaTrader 5 terminal
        if mt5.initialize(login=self.login, server=self.server, password=self.password):
            self.load_rates(time_from=time_from, time_to=time_to)
            # shut down connection to the MetaTrader 5 terminal
            mt5.shutdown()  # TODO better solution
        else:
            print("initialize() failed, error code =", mt5.last_error())

    def load_rates(self, time_from: tuple, time_to: tuple, time_zone="Etc/UTC") -> None:
        """
            load raw ticks from cache or server

            :param time_from: tuple of (yyyy, mm, dd)
            :param time_to: tuple of (yyyy, mm, dd)
            :param time_zone: "Etc/UTC"
            :return: dict of all coin-pair with value filled
            """
        # set time zone to UTC
        timezone = pytz.timezone(time_zone)
        # create 'datetime' object in UTC time zone to avoid the implementation of a local time zone offset
        utc_from = datetime(*time_from, tzinfo=timezone)
        utc_to = datetime(*time_to, tzinfo=timezone)

        for pair in self.pairs.keys():
            while True:
                try:
                    # fetch data
                    data = mt5.copy_rates_range(pair, mt5.TIMEFRAME_M1, utc_from, utc_to)
                    # verify data
                    if mt5.last_error()[0] == -3:  # (-3, 'Terminal: Out of memory')  TimeSpawn Oversize
                        raise TimeSpawnOverSizeError
                    if mt5.last_error()[0] == -1:  # Request Overtime
                        raise RequestOvertimeError
                    if data is None or len(data) == 0:  # EmptyData! ReloadIsRequired.
                        print(mt5.last_error())
                        print(utc_from)
                        print(utc_to)
                        raise EmptyDataError
                    break
                except TimeSpawnOverSizeError:
                    print(f"{pair} failed!")
                    print("Time-spawn is too long, unable to continue.")
                    raise TimeSpawnOverSizeError
                except RequestOvertimeError:
                    print(f"{pair} failed!")
                    print("Retrying...")
                except EmptyDataError:
                    print(f"{pair} failed!")
                    print("Empty data received, retrying...")
                    time.sleep(1)

            print(f"Coin-pair: {pair} Rates received: {len(data)}")
            # upgrade buffer
            self.pairs[pair].upgrade(data)
        # check dataclass if all same timestamp
        begin = [self.pairs[pair].utc_from_timestamp for pair in self.pairs.keys()]
        end = [self.pairs[pair].utc_to_timestamp for pair in self.pairs.keys()]
        if max(begin) - min(begin) < 0.01 and max(end) - min(end) < 0.01:
            pass
        else:
            print("Unmatched TimeStamps!")

    def c_call(self):
        time.sleep(5)
        while True:
            self.upgrading = True
            print(f"before {min([self.pairs[_pair_].current[1] for _pair_ in self.pairs.keys()])}")
            self.__call__()
            print(f"after {min([self.pairs[_pair_].current[1] for _pair_ in self.pairs.keys()])}")
            self.upgrading = False
            self.upgraded = True
            time.sleep(1)

    def mt5_load_ticks(self, time_from, time_to):
        # establish connection to MetaTrader 5 terminal
        if mt5.initialize(login=self.login, server=self.server, password=self.password):
            self.pairs = self.load_ticks(time_from=time_from, time_to=time_to)
            # shut down connection to the MetaTrader 5 terminal
            mt5.shutdown()
        else:
            print("initialize() failed, error code =", mt5.last_error())

    def __call__(self):
        tomorrow = datetime.utcfromtimestamp(time.time() + 86400.0*2)
        today = datetime.utcfromtimestamp(time.time()-86400.0*3)
        self.time_to = (tomorrow.year, tomorrow.month, tomorrow.day)
        print((today.year, today.month, today.day), self.time_to)  # debug
        self.mt5_load_rates((today.year, today.month, today.day), self.time_to)

    def descend(self, interval=1, start=4, period=4) -> list:
        """
        Weak Currency ... Strong Currency

        :param interval: candle size, default is 1min.
        :param start: index of the candle array, default is 4.
        :param period: offsets from start, default is 4.
        :return: sorted currency with increasing strength.
        """
        if start - period < 0:
            period = start
            print("Insufficient data-length, LowAccuracyWarning!")
        currency = {"USD": 0, "AUD": 0, "JPY": 0, "CHF": 0, "GBP": 0, "EUR": 0, "CAD": 0}
        for pair in self.pairs.keys():
            # compare "close"
            if self.pairs[pair].candles[interval][start, 4] - self.pairs[pair].candles[interval][start-period, 4] > 0:
                currency[pair[:3]] += 1
            elif self.pairs[pair].candles[interval][start, 4] - self.pairs[pair].candles[interval][start-period, 4] < 0:
                currency[pair[3:]] += 1
            else:
                pass

        return sorted(zip(currency.values(), currency.keys()))

    def load_ticks(self, time_from=(2020, 1, 1), time_to=(2020, 1, 7), time_zone="Etc/UTC") -> dict:
        """
            load raw ticks from cache or server

            :param time_from: tuple of (yyyy, mm, dd)
            :param time_to: tuple of (yyyy, mm, dd)
            :param time_zone: "Etc/UTC"
            :return: dict of all coin-pair with value filled
            """
        # set time zone to UTC
        timezone = pytz.timezone(time_zone)
        # create 'datetime' object in UTC time zone to avoid the implementation of a local time zone offset
        utc_from = datetime(*time_from, tzinfo=timezone)
        utc_to = datetime(*time_to, tzinfo=timezone)
        # fetch data
        _pairs_uninitialized = [*self.pairs.keys()]
        while _pairs_uninitialized:
            # load/download ticks data in pairs
            for index, coin_pair in enumerate(_pairs_uninitialized):
                try:
                    ticks = mt5.copy_ticks_range(coin_pair, utc_from, utc_to, mt5.COPY_TICKS_ALL)
                    if mt5.last_error()[0] == -3:  # (-3, 'Terminal: Out of memory')  TimeSpawn Oversize
                        raise TimeSpawnOverSizeError
                    if mt5.last_error()[0] == -1:  # Request Overtime
                        raise RequestOvertimeError
                    print(f"Coin-pair: {coin_pair} Ticks received: {len(ticks)}")
                    # create DataFrame out of the obtained data
                    ticks_frame = pd.DataFrame(ticks)
                    # convert time in seconds into the datetime format
                    ticks_frame['time'] = pd.to_datetime(ticks_frame['time'], unit='s')
                    self.pairs[coin_pair] = ticks_frame.copy(deep=True)
                    # remove finished pairs
                    _pairs_uninitialized.pop(index)
                except TimeSpawnOverSizeError:
                    print(f"{coin_pair} failed!")
                    print("Time-spawn is too long, unable to continue.")
                    break
                except RequestOvertimeError:
                    print(f"{coin_pair} failed!")
                    print("Retrying...")

        return self.pairs

    @staticmethod
    def export_candle_continuous(_start: int, _interval: int, _raw_ticks, _source: str) -> np.ndarray:
        """
        core candle function
        do NOT call this function directly

        :param _start: timestamp of mt5 raw
        :param _interval: candle time step interpolated
        :param _raw_ticks: pandas dataframe of mt5 ticks data
        :param _source: "bid" or "ask"
        :return: candles array
        """
        _end = _start + _interval
        _buffer = np.zeros((30 * 24 * 60 * 60 * 1000 // _interval, 5),
                           dtype=np.float32)  # 15days->2candles; 1day->30candles; 15min->96*30candles
        pointer = 0
        ticks_data = np.array(_raw_ticks.iloc[:, 1:3], dtype=np.float32)
        ticks_time = np.array(_raw_ticks.iloc[:, 5], dtype=np.uint64)
        candle = np.array([0.0, 0.0, 1e8, 0.0, _start / 1000], dtype=np.float32)
        step = 0

        if _source == "bid":
            source_index = 0
        elif _source == "ask":
            source_index = 1
        else:
            source_index = 0

        while step < ticks_time.shape[0]:
            price = ticks_data[step][source_index]
            time_stamp = ticks_time[step]
            if _start <= time_stamp < _end:
                # open
                if candle[0] == 0.0:
                    candle[0] = price
                # high
                if price > candle[1]:
                    candle[1] = price
                # low
                if price < candle[2]:
                    candle[2] = price
                # close
                candle[3] = price
                # tick cleared
                step += 1
            elif time_stamp < _start:
                step += 1
            else:
                while _end <= time_stamp:
                    candle[4] = _start / 1000  # ms->s
                    _start = _end
                    _end += _interval

                    _buffer[pointer] = candle
                    print(f"export candle {time.ctime(_start / 1000)}")
                    pointer += 1
                candle = np.array([0.0, 0.0, 1e8, 0.0, _start / 1000], dtype=np.float32)
        _buffer[pointer] = candle
        return _buffer

    def generate_candles(self, coin_pair: str, candle_size: int | str, source="bid"):
        """
        take in ticks and generate candles with open, high, low, close

        :param coin_pair: "EURGBP"
        :param candle_size: time interval, ranges from 1s to 15d
        :param source: bid or ask
        :return:
        """
        raw_ticks = self.pairs[coin_pair]
        interval = 0
        try:
            candle_size = int(candle_size)
            interval = 60000 * candle_size
            assert interval < 15 * 24 * 60 * 60 * 1000
        except AssertionError:
            print("Unrealistic CandleSize, Maximum is 15days (21600).")
            raise AssertionError
        except ValueError:
            try:
                import re
                find_number = re.compile(r"(\d+)([a-z]+)", re.S)

                number, unit = re.findall(find_number, candle_size)[0]
                if unit in ("m", "min", "minute", "minutes"):
                    interval = int(number) * 60 * 1000
                elif unit in ("h", "hour", "hours"):
                    interval = int(number) * 60 * 60 * 1000
                elif unit in ("d", "day", "days"):
                    interval = int(number) * 24 * 60 * 60 * 1000
                elif unit in ("s", "sec", "second", "seconds"):
                    interval = int(number) * 1000
                else:
                    raise IndexError
            except IndexError:
                print("Unidentified TimeInterval Format.\nTry '15m', '4h', '1d' e.g.")
                raise IndexError
        finally:
            assert interval != 0

        start = raw_ticks.iloc[0].time_msc - raw_ticks.iloc[0].time_msc % interval
        print(time.ctime(start / 1000))

        return coin_pair, self.export_candle_continuous(start, interval, raw_ticks, source)

    def load_candles(self, interval: int | str, source="bid", upgrade=False):
        """
        Buggy Warning!
        Upgrade candles data.

        :param upgrade: bool, Upgrade-In-Time if True.
        :param interval: candle time step
        :param source: "bid" or "ask"
        :return: None
        """

        from multiprocessing import Pool
        arguments = [[coin_pair, interval, source] for coin_pair in self.pairs.keys()]
        pool = Pool()

        if interval in self.candles.keys():  # buffer has created, upgrade only
            # TODO: concat new parts with early parts and shift size
            print("TODO: concat new parts with early parts and shift size")
            """
            upgrade ticks -> index ticks start -> create candles -> concat -> cut tail
            """
            time_to = [int(_) for _ in
                       datetime.utcfromtimestamp(time.time() + 24 * 60 * 60).strftime("%Y/%m/%d").split("/")]
            time_from = [int(_) for _ in
                         datetime.utcfromtimestamp(self.pairs["AUDCAD"].iloc[-1, 5] / 1000).strftime("%Y/%m/%d").split(
                             "/")]
            self.mt5_load_ticks(time_from, time_to)  # upgrade ticks

            data = pool.starmap(self.generate_candles, arguments)
            # collect candles and save in self.candles with keys of intervals
            for item in data:  # item[0] == CoinPairs, item[1] == CandleBuffer
                for step, candle in enumerate(self.candles[interval][item[0]]):
                    if abs(candle[-1] - item[1][0, -1]) < 0.1:
                        temp = np.vstack((self.candles[interval][item[0]][:step], item[1]))
                        _position_of_0 = 0
                        while temp[_position_of_0][0]:
                            _position_of_0 += 1
                        self.candles[interval][item[0]] = temp[
                                                          max(_position_of_0, item[1].shape[0]) - item[1].shape[0]: max(
                                                              _position_of_0, item[1].shape[0])]
                        break
                    elif step >= self.candles[interval][item[0]].shape[0]:
                        self.candles[interval][item[0]] = item[1]
                self.time_from = self.candles[interval][item[0]][0, -1]
                # "index ticks start -> create candles -> concat -> cut tail" Done
        else:  # new buffer, full process
            time_to = [int(_) for _ in
                       datetime.utcfromtimestamp(time.time() + 24 * 60 * 60).strftime("%Y/%m/%d").split("/")]
            time_from = [int(_) for _ in
                         datetime.utcfromtimestamp(self.time_from).strftime("%Y/%m/%d").split("/")]
            self.mt5_load_ticks(time_from, time_to)  # upgrade ticks
            data = pool.starmap(self.generate_candles, arguments)
            self.candles[interval] = {}
            for item in data:  # item[0] == CoinPairs, item[1] == CandleBuffer
                self.candles[interval][item[0]] = item[1]

    def upgrade(self, period="7d", upgrade_interval="30s"):
        interval = 0
        try:
            upgrade_interval = int(upgrade_interval)
            interval = 60 * upgrade_interval
            assert interval < 15 * 24 * 60 * 60 * 1
        except AssertionError:
            print("Unrealistic UpgradeInterval, Maximum is 15days (21600).")
            raise AssertionError
        except ValueError:
            try:
                import re
                find_number = re.compile(r"(\d+)([a-z]+)", re.S)

                number, unit = re.findall(find_number, upgrade_interval)[0]
                if unit in ("m", "min", "minute", "minutes"):
                    interval = int(number) * 60 * 1
                elif unit in ("h", "hour", "hours"):
                    interval = int(number) * 60 * 60 * 1
                elif unit in ("d", "day", "days"):
                    interval = int(number) * 24 * 60 * 60 * 1
                elif unit in ("s", "sec", "second", "seconds"):
                    interval = int(number) * 1
                else:
                    raise IndexError
            except IndexError:
                print("Unidentified TimeInterval Format.\nTry '15m', '4h', '1d' e.g.")
                raise IndexError
        finally:
            assert interval != 0

        while True:
            time.sleep(interval)
            time_to = [int(_) for _ in datetime.utcfromtimestamp(time.time()).strftime("%Y/%m/%d").split("/")]
            time_from = [int(_) for _ in
                         datetime.utcfromtimestamp(time.time() - 1440 * 7 * 60).strftime("%Y/%m/%d").split("/")]
            print(time_from, time_to)
            # establish connection to MetaTrader 5 terminal
            if mt5.initialize(login=self.login, server=self.server, password=self.password):
                self.pairs = self.load_ticks(time_from=time_from, time_to=time_to)
                # shut down connection to the MetaTrader 5 terminal
                mt5.shutdown()
            else:
                print("initialize() failed, error code =", mt5.last_error())
            for candle_size in self.candles:
                self.load_candles(candle_size, upgrade=True)

    def upgrade_candle_buffer(self, candle_buffer):
        pass


if __name__ == "__main__":
    # try:
        manager = DataManager()
        print(manager.pairs["USDJPY"].candles[1])
        # print(manager.pairs["USDJPY"].candles[5])
        for _start in range(60, 300):
            print(manager.descend(interval=5, start=_start, period=60))
        input()
        # print(manager.candles[manager.time_interval].values())
        # print(manager.descend("15min", 10, 7))
    # except:
    #     traceback.print_exc()
