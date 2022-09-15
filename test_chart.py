import time
import threading

import pyrr
import numpy as np
from OpenGL.GL import *
import glfw
from OpenGL.GL.shaders import compileProgram, compileShader

from components import chart, candle_chart, intensity_chart, moving_average_chart, moving_average_convergence_divergence_chart
from text.text_manager import TextRenderer


class DisplayPort:
    def __init__(self):
        glfw.init()
        self.window = glfw.create_window(1920, 1400, "TestChart", None, None)
        glfw.set_window_pos(self.window, 0, 30)
        glfw.hide_window(self.window)
        print("DisplayPort Initialized.")
        self.cursor_position = (0.0, 0.0)
        self.offset = 0
        self.click = False

        self.coin_pairs = ["AUDCAD", "AUDCHF", "AUDJPY", "AUDUSD", "CADCHF", "CADJPY", "CHFJPY", "EURAUD", "EURCAD", "EURCHF", "EURGBP", "EURJPY", "EURUSD", "GBPAUD", "GBPCAD", "GBPCHF", "GBPJPY", "GBPUSD", "USDCAD", "USDCHF", "USDJPY"]
        self.coins_button_buffer = """AUDCAD\nAUDCHF\nAUDJPY\nAUDUSD\nCADCHF\nCADJPY\nCHFJPY\nEURAUD\nEURCAD\nEURCHF\nEURGBP\nEURJPY\nEURUSD\nGBPAUD\nGBPCAD\nGBPCHF\nGBPJPY\nGBPUSD\nUSDCAD\nUSDCHF\nUSDJPY\n """
        self.available_interval = [1, 2, 3, 4, 5, 10, 15, 30, 45, 60, 120, 180, 240, 360, 720, 1440]

        from text.data_manager import DataManager
        from datetime import datetime
        tomorrow = datetime.utcfromtimestamp(time.time() + 86400.0*2)
        month_ago = datetime.utcfromtimestamp(time.time() - 86400.0*2)
        self.data_manager = DataManager(
            time_from=(month_ago.year, month_ago.month, month_ago.day),
            time_to=(tomorrow.year, tomorrow.month, tomorrow.day),
            login=25115284,
            server="MetaQuotes-Demo",
            password="4zatlbqx"
        )

        self.status = chart.ChartStatus()
        self.status(
            {
                "offset": 0,
                "coin_pair_id": 0,
                "time_interval": 1,
                "begin": 0,
                "end": 0,
                "current": min([self.data_manager.pairs[_pair_].current[1] for _pair_ in self.coin_pairs]),
                "selected": 0,
                "anchor": 0,
                "data_manager": self.data_manager,

            }
        )
        glfw.make_context_current(self.window)
        self.candle_chart = candle_chart.CandleChart(self.status)
        self.intensity_chart = intensity_chart.IntensityChart(self.status)
        self.moving_average_chart = moving_average_chart.MovingAverageChart(self.status)
        self.moving_average_convergence_divergence_chart = moving_average_convergence_divergence_chart.MovingAverageConvergenceDivergenceChart(self.status)

    def __call__(self, *args, **kwargs):
        renderer = TextRenderer(1920, 1400)
        glEnable(GL_BLEND)
        glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)

        self.track_cursor()

        glEnable(GL_DEPTH_TEST)
        glfw.show_window(self.window)

        while not glfw.window_should_close(self.window):
            glfw.poll_events()
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

            data_upgraded = self.data_manager.upgraded
            if self.data_manager.upgraded:
                self.data_manager.upgraded = False
            self.status({"current": min([self.data_manager.pairs[_pair_].current[1] for _pair_ in self.coin_pairs]),
                         "anchor": max((0, min([self.data_manager.pairs[_pair_].current[1] for _pair_ in self.coin_pairs])-200))
                         })
            # print(self.data_manager.pairs["AUDCAD"].candles[1][self.status.current-1:self.status.current+1])
            # print(np.frombuffer(glGetBufferSubData(GL_SHADER_STORAGE_BUFFER, self.status.current*16-16, 32, None), dtype=np.float32).reshape((-1, 4)))
            self.candle_chart(data_upgraded)
            self.intensity_chart(data_upgraded)
            self.moving_average_chart(data_upgraded, 1)
            self.moving_average_chart(data_upgraded, 2)
            self.moving_average_chart(data_upgraded, 3)
            self.moving_average_chart(data_upgraded, 4)
            self.moving_average_chart(data_upgraded, 5)
            self.moving_average_chart(data_upgraded, 10)
            self.moving_average_chart(data_upgraded, 15)
            self.moving_average_chart(data_upgraded, 30)
            self.moving_average_chart(data_upgraded, 60)
            self.moving_average_chart(data_upgraded, 120)
            self.moving_average_chart(data_upgraded, 180)
            self.moving_average_convergence_divergence_chart(data_upgraded, 1)
            renderer.render_text(f"{self.status.coin_pairs[self.status.coin_pair_id]}", 600, 500, 0.5)

            self.status.modified = False


            glClearColor(0.0, 0.0, 0.0, 1.0)
            glfw.swap_buffers(self.window)
        glfw.terminate()

    def track_cursor(self):
        def cursor_position_clb(*args):
            print(args[1:])
            delta = args[1] - self.cursor_position[0]
            self.cursor_position = args[1:]
            if self.click:
                self.status({"offset": int(min(max(0, self.status.offset-delta), self.status.current))})
                print(self.status.offset)

        def mouse_button_clb(*args):
            if args[1] == 0 and args[2] == 1:
                self.click = True
            else:
                self.click = False

        def scroll_clb(*args):
            self.status({"coin_pair_id": int((self.status.coin_pair_id+args[1]+args[2])%21)})

        glfw.set_scroll_callback(self.window, scroll_clb)

        glfw.set_mouse_button_callback(self.window, mouse_button_clb)

        glfw.set_cursor_pos_callback(self.window, cursor_position_clb)


if __name__ == "__main__":
    dp = DisplayPort()
    dp()

