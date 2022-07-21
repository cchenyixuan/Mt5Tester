import time
import threading

import pyrr
import numpy as np
from OpenGL.GL import *
import glfw
from OpenGL.GL.shaders import compileProgram, compileShader

from text.text_manager import TextRenderer
from chart_manager import Chart

console = False
console_buffer = """>>>"""


class DisplayPort:
    def __init__(self):
        glfw.init()
        self.window = glfw.create_window(1920, 1080, "text render", None, None)
        glfw.set_window_pos(self.window, 0, 30)
        glfw.hide_window(self.window)
        print("DisplayPort Initialized.")
        self.cursor_position = (0.0, 0.0)
        self.offset = 0
        self.click = False

        self.coin_pairs = ["AUDCAD", "AUDCHF", "AUDJPY", "AUDUSD", "CADCHF", "CADJPY", "CHFJPY", "EURAUD", "EURCAD", "EURCHF", "EURGBP", "EURJPY", "EURUSD", "GBPAUD", "GBPCAD", "GBPCHF", "GBPJPY", "GBPUSD", "USDCAD", "USDCHF", "USDJPY"]
        self.coins_button_buffer = """AUDCAD\nAUDCHF\nAUDJPY\nAUDUSD\nCADCHF\nCADJPY\nCHFJPY\nEURAUD\nEURCAD\nEURCHF\nEURGBP\nEURJPY\nEURUSD\nGBPAUD\nGBPCAD\nGBPCHF\nGBPJPY\nGBPUSD\nUSDCAD\nUSDCHF\nUSDJPY\n """
        self.available_interval = [1, 2, 3, 4, 5, 10, 15, 30, 45, 60, 120, 180, 240, 360, 720, 1440]

        from data_manager import DataManager
        from datetime import datetime
        tomorrow = datetime.utcfromtimestamp(time.time() + 86400.0*2)
        month_ago = datetime.utcfromtimestamp(time.time() - 86400.0*30)
        self.data_manager = DataManager(
            time_from=(month_ago.year, month_ago.month, month_ago.day),
            time_to=(tomorrow.year, tomorrow.month, tomorrow.day),
            login=25115284,
            server="MetaQuotes-Demo",
            password="4zatlbqx"
        )


    def __call__(self, *args, **kwargs):
        glfw.make_context_current(self.window)
        glEnable(GL_BLEND)
        glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
        renderer = TextRenderer(1920, 1080)
        self.chart = Chart(self.data_manager, "AUDUSD")
        self.offset = max(0, self.chart.max_length-160)
        self.track_cursor()
        self.score_period_4 = """"""
        self.score_period_8 = """"""
        self.score_period_12 = """"""

        if console:

            def char_clb(*args):
                global console_buffer
                char = chr(args[1])
                console_buffer += char

            def key_clb(*args):
                global console_buffer
                key = args[1]
                action = args[3]
                print(*args)
                if key == glfw.KEY_BACKSPACE and (action == glfw.PRESS or action == glfw.REPEAT) and len(
                        console_buffer) > 3:
                    if console_buffer[-4:] == "\n>>>":
                        console_buffer = console_buffer.rstrip(">")
                    console_buffer = console_buffer[:-1]
                if key == glfw.KEY_TAB and (action == glfw.PRESS or action == glfw.REPEAT):
                    console_buffer += "\t"
                if key == glfw.KEY_ENTER and (action == glfw.PRESS or action == glfw.REPEAT):
                    console_buffer += "\n>>>"
                if key == glfw.KEY_ESCAPE and action == glfw.PRESS:
                    glfw.set_window_should_close(self.window, True)

            glfw.set_char_callback(self.window, char_clb)
            glfw.set_key_callback(self.window, key_clb)

            vertex_src = """"""
            fragment_src = """"""
            with open(r"./shaders/demo_vertex.shader", "r") as f:
                for row in f:
                    vertex_src += row
                f.close()
            with open(r"./shaders/demo_fragment.shader", "r") as f:
                for row in f:
                    fragment_src += row
                f.close()
            shader = compileProgram(compileShader(vertex_src, GL_VERTEX_SHADER),
                                    compileShader(fragment_src, GL_FRAGMENT_SHADER))
            projection_loc = glGetUniformLocation(shader, "projection")
            glUseProgram(shader)
            glUniformMatrix4fv(projection_loc, 1, GL_FALSE,
                               pyrr.matrix44.create_orthogonal_projection_matrix(-960, 960, -540, 540, 100, -100))
            vao = glGenVertexArrays(1)
            glBindVertexArray(vao)
            vbo = glGenBuffers(1)
            glBindBuffer(GL_ARRAY_BUFFER, vbo)
            glBufferData(GL_ARRAY_BUFFER, 16 * 4, np.array(
                [[-960, 540, 0.0, 1.0], [960, 540, 0.0, 1.0], [-960, -540, 0.0, 1.0], [960, -540, 0.0, 1.0]],
                dtype=np.float32), GL_STATIC_DRAW)
            glEnableVertexAttribArray(0)
            glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, 16, ctypes.c_void_p(0))
            glEnable(GL_BLEND)
            glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
            renderer = TextRenderer(1920, 1080)

        glEnable(GL_DEPTH_TEST)
        glfw.show_window(self.window)

        self.chart.draw_intensity()

        while not glfw.window_should_close(self.window):
            glfw.poll_events()
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

            self.chart(self.cursor_position, self.offset)
            # TODO: This API needs DEBUG
            # self.chart.draw_call_intensity(self.cursor_position, self.offset)

            if console:
                renderer.render_with_encoding(console_buffer, -900, -400, 0.3, (np.sin(glfw.get_time()), 0.7, 0.2))

            renderer.render_with_encoding(time.ctime(time.time()) +f"\n{self.cursor_position[0]}, {self.cursor_position[1]}\n{self.offset}\n{min([(self.cursor_position[0]+5)//10+self.offset, self.chart.max_length])}\n04: {self.score_period_4}\n08: {self.score_period_8}\n12: {self.score_period_12}\nOpen High Low Close: {str(self.chart.data_manager.pairs[self.chart.coin_pair].candles[self.chart.time_interval][int(min([(self.cursor_position[0] + 5) // 10 + self.offset, self.chart.max_length]))][1:])}", 210, -200, 0.3, (np.sin(self.cursor_position[0] / 100), 0.8, 0.9))

            for step, pair in enumerate(self.coins_button_buffer.split("\n")[:-1]):
#                 text_to_render = f"{time.ctime(self.chart.data_manager.candles[self.chart.time_interval][pair][int(min([(self.cursor_position[0] + 5) // 10 + self.offset, 160 + self.offset]))][-1])}\n"
                if self.chart.coin_pair == pair:
                    text_color = (0.9, 0.2, 0.4)
                if self.cursor_position[0] > 1160 and 19+30*step <= self.cursor_position[1] < 49+30*step:
                    text_color = (0.8, 1.0, 0.1)
                elif self.chart.coin_pair != pair:
                    text_color = (0.3, 0.8, 0.9)
                if self.click and self.cursor_position[0] > 1160 and 19+30*step <= self.cursor_position[1] < 49+30*step and self.chart.coin_pair != pair:
                    print(pair)
                    self.chart.redraw_coin_pair(pair)

                renderer.render_with_encoding(pair, 210, 500-30*step, 0.3, text_color, 30)
#                 renderer.render_with_encoding(text_to_render, 310, 500-30*step, 0.3, text_color, 30)

            for step, interval in enumerate(self.available_interval):
                if self.chart.time_interval == interval:
                    text_color = (0.9, 0.2, 0.4)
                if 1163+50*step < self.cursor_position[0] < 1213+50*step and 656 <= self.cursor_position[1] < 686:
                    text_color = (0.8, 1.0, 0.1)
                elif self.chart.time_interval != interval:
                    text_color = (0.3, 0.8, 0.9)
                if self.click and 1163+50*step < self.cursor_position[0] < 1213+50*step and 656 <= self.cursor_position[1] < 686 and self.chart.time_interval != interval:
                    print(interval)
                    self.chart.redraw_time_interval(interval)
                    self.offset = max(0, self.chart.max_length-160)  # required while interval changed

                renderer.render_with_encoding(interval, 210+50*step, -156, 0.3, text_color, 30)

            glClearColor(0.0, 0.0, 0.0, 1.0)
            glfw.swap_buffers(self.window)
        glfw.terminate()

    def track_cursor(self):
        def cursor_position_clb(*args):
            print(args[1:])
            delta = args[1] - self.cursor_position[0]
            self.cursor_position = args[1:]
            self.score_period_4 = str(self.chart.data_manager.descend(self.chart.time_interval, int(min([(self.cursor_position[0] + 5) // 10 + self.offset, self.chart.max_length])), 4))
            self.score_period_8 = str(self.chart.data_manager.descend(self.chart.time_interval, int(min([(self.cursor_position[0] + 5) // 10 + self.offset, self.chart.max_length])), 8))
            self.score_period_12 = str(self.chart.data_manager.descend(self.chart.time_interval, int(min([(self.cursor_position[0] + 5) // 10 + self.offset, self.chart.max_length])), 12))
            if self.click:
                self.offset = int(min(max(0, self.offset-delta), self.chart.max_length))
                print(self.offset)

        def mouse_button_clb(*args):
            if args[1] == 0 and args[2] == 1:
                self.click = True
            else:
                self.click = False
        glfw.set_mouse_button_callback(self.window, mouse_button_clb)

        glfw.set_cursor_pos_callback(self.window, cursor_position_clb)


if __name__ == "__main__":
    dp = DisplayPort()
    dp()

