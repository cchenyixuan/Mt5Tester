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


# %%

class DataManager:
    """
    Manager of mt5 data.
    """

    def __init__(self, time_from=(2022, 5, 13), time_to=(2022, 5, 16), login=25115284, server="MetaQuotes-Demo",
                 password="4zatlbqx"):
        """
        init manager, connect mt5 server an get all ticks
        """
        self.pairs = {
            "AUDCAD": None,
            "AUDCHF": None,
            "AUDJPY": None,
            "AUDUSD": None,
            "CADCHF": None,
            "CADJPY": None,
            "CHFJPY": None,
            "EURAUD": None,
            "EURCAD": None,
            "EURCHF": None,
            "EURGBP": None,
            "EURJPY": None,
            "EURUSD": None,
            "GBPAUD": None,
            "GBPCAD": None,
            "GBPCHF": None,
            "GBPJPY": None,
            "GBPUSD": None,
            "USDCAD": None,
            "USDCHF": None,
            "USDJPY": None,
        }
        self.candles = {}
        self.time_interval = "1m"


        self.login = login
        self.server = server
        self.password = password

        self.mt5_load_ticks(time_from, time_to)

        self.time_from = (self.pairs['AUDCAD'].iloc[0, 5]/1000) - (self.pairs['AUDCAD'].iloc[0, 5]/1000) % (60*60*24)
        auto_upgrade = threading.Thread(target=self.c_call)
        auto_upgrade.setDaemon(True)
        auto_upgrade.start()

    def c_call(self):
        while True:
            time.sleep(60)
            self.__call__("1m")

    def mt5_load_ticks(self, time_from, time_to):
        # establish connection to MetaTrader 5 terminal
        if mt5.initialize(login=self.login, server=self.server, password=self.password):
            self.pairs = self.load_ticks(time_from=time_from, time_to=time_to)
            # shut down connection to the MetaTrader 5 terminal
            mt5.shutdown()
        else:
            print("initialize() failed, error code =", mt5.last_error())

    def __call__(self, time_interval="15min"):
        self.time_interval = time_interval
        self.load_candles(time_interval)

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
            time_to = [int(_) for _ in datetime.utcfromtimestamp(time.time()+24*60*60).strftime("%Y/%m/%d").split("/")]
            time_from = [int(_) for _ in datetime.utcfromtimestamp(self.pairs["AUDCAD"].iloc[-1, 5]/1000).strftime("%Y/%m/%d").split("/")]
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
                        self.candles[interval][item[0]] = temp[max(_position_of_0, item[1].shape[0])-item[1].shape[0]: max(_position_of_0, item[1].shape[0])]
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

    def descend(self, interval="15min", start=4, period=4) -> list:
        """
        Weak Currency ... Strong Currency

        :param interval: candle size, default is 15min.
        :param start: index of the candle array, default is 4.
        :param period: offsets from start, default is 4.
        :return: sorted currency with increasing strength.
        """
        if start - period < 0:
            period = start
            print("Insufficient data-length, LowAccuracyWarning!")
        currency = {"USD": 0, "AUD": 0, "JPY": 0, "CHF": 0, "GBP": 0, "EUR": 0, "CAD": 0}
        for pair in self.pairs.keys():
            if self.candles[interval][pair][start][3] - self.candles[interval][pair][start - period][
                3] > 0:  # compare "close"
                currency[pair[:3]] += 1
            elif self.candles[interval][pair][start][3] - self.candles[interval][pair][start - period][3] < 0:
                currency[pair[3:]] += 1
            else:
                pass

        return sorted(zip(currency.values(), currency.keys()))

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
    try:
        manager = DataManager()
        manager()
        print(manager.candles[manager.time_interval].values())
        print(manager.descend("15min", 10, 7))
    except:
        traceback.print_exc()
