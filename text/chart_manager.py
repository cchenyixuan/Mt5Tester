import pyrr
import numpy as np
from OpenGL.GL import *
import glfw
from OpenGL.GL.shaders import compileProgram, compileShader


class Chart:
    def __init__(self, data_manager, coin_pair="EURUSD", time_interval=1):
        self.data_manager = data_manager

        self.sbo = glGenBuffers(1)
        self.vao = glGenVertexArrays(1)
        self.vbo = glGenBuffers(1)
        vertex_src = """"""
        geometry_src = """"""
        fragment_src = """"""
        with open(r"./shaders/chart_vertex.shader", "r") as f:
            for row in f:
                vertex_src += row
            f.close()
        with open(r"./shaders/chart_geometry.shader", "r") as f:
            for row in f:
                geometry_src += row
            f.close()
        with open(r"./shaders/demo_fragment.shader", "r") as f:
            for row in f:
                fragment_src += row
            f.close()
        self.shader = compileProgram(compileShader(vertex_src, GL_VERTEX_SHADER),
                                     compileShader(geometry_src, GL_GEOMETRY_SHADER),
                                     compileShader(fragment_src, GL_FRAGMENT_SHADER))
        self.projection_loc = glGetUniformLocation(self.shader, "projection")
        self.scaling_loc = glGetUniformLocation(self.shader, "scaling")
        self.translation_loc = glGetUniformLocation(self.shader, "translation")
        self.cursor_loc = glGetUniformLocation(self.shader, "cursor")
        self.offset_loc = glGetUniformLocation(self.shader, "offset")
        self.coin_pair_id_loc = glGetUniformLocation(self.shader, "coin_pair_id")
        self.time_interval_loc = glGetUniformLocation(self.shader, "time_interval")

        self.coin_pair = coin_pair
        self.time_interval = time_interval
        self.coin_pair_id = ["AUDCAD", "AUDCHF", "AUDJPY", "AUDUSD", "CADCHF", "CADJPY", "CHFJPY", "EURAUD", "EURCAD",
                             "EURCHF", "EURGBP", "EURJPY", "EURUSD", "GBPAUD", "GBPCAD", "GBPCHF", "GBPJPY", "GBPUSD",
                             "USDCAD", "USDCHF", "USDJPY"].index(coin_pair)

        # TODO: reforge here to apply auto-scaling with visible part
        self.begin = 0
        self.end = self.begin + 160  # 160 is max-candle-number for current candle size
        self._translate = np.min(
            self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self.begin: self.end, 1:])
        self._scale = 1080 / (
                np.max(self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self.begin: self.end,
                       1:]) - self._translate + 1e-8)  # avoid ZeroDivisionError
        self.draw_candles()
        self._position_of_0 = -1
        while not self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self._position_of_0, -1]:
            self._position_of_0 -= 1
        self._position_of_0 = self.data_manager.pairs[self.coin_pair].candles[self.time_interval].shape[
                                  0] + self._position_of_0
        # TODO: Above need check and debug.

        self.max_length = self._position_of_0

    def auto_scale(self):
        self.begin = 0
        self.end = self.begin + 160  # 160 is max-candle-number for current candle size
        self._translate = np.min(
            self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self.begin: self.end, 1:])
        self._scale = 1080 / (
                np.max(self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self.begin: self.end,
                       1:]) - self._translate + 1e-8)  # avoid ZeroDivisionError
        self.draw_candles()
        self._position_of_0 = -1
        while not self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self._position_of_0, -1]:
            self._position_of_0 -= 1
        self._position_of_0 = self.data_manager.pairs[self.coin_pair].candles[self.time_interval].shape[
                                  0] + self._position_of_0
        self.max_length = self._position_of_0

    def redraw_coin_pair(self, coin_pair):
        self.coin_pair = coin_pair
        self.coin_pair_id = ["AUDCAD", "AUDCHF", "AUDJPY", "AUDUSD", "CADCHF", "CADJPY", "CHFJPY", "EURAUD", "EURCAD",
                             "EURCHF", "EURGBP", "EURJPY", "EURUSD", "GBPAUD", "GBPCAD", "GBPCHF", "GBPJPY", "GBPUSD",
                             "USDCAD", "USDCHF", "USDJPY"].index(coin_pair)

        # TODO: reforge here to apply auto-scaling with visible part
        self.begin = 0
        self.end = self.begin + 160  # 160 is max-candle-number for current candle size
        self._translate = np.min(
            self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self.begin: self.end, 1:])
        self._scale = 1080 / (
                np.max(self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self.begin: self.end,
                       1:]) - self._translate + 1e-8)  # avoid ZeroDivisionError
        self.draw_candles()
        self._position_of_0 = -1
        while not self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self._position_of_0, -1]:
            self._position_of_0 -= 1
        self._position_of_0 = self.data_manager.pairs[self.coin_pair].candles[self.time_interval].shape[
                                  0] + self._position_of_0

        # TODO: Above need check and debug.
        self.max_length = self._position_of_0

    def redraw_time_interval(self, time_interval):
        self.time_interval = time_interval

        # TODO: reforge here to apply auto-scaling with visible part
        self.begin = 0
        self.end = self.begin + 160  # 160 is max-candle-number for current candle size
        self._translate = np.min(
            self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self.begin: self.end, 1:])
        self._scale = 1080 / (
                np.max(self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self.begin: self.end,
                       1:]) - self._translate + 1e-8)  # avoid ZeroDivisionError
        self.draw_candles()
        self._position_of_0 = -1
        while not self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self._position_of_0, -1]:
            self._position_of_0 -= 1
        self._position_of_0 = self.data_manager.pairs[self.coin_pair].candles[self.time_interval].shape[
                                  0] + self._position_of_0
        # TODO: Above need check and debug.

        # self._position_of_0 = 0
        # while self.data_manager.candles[self.time_interval][coin_pair][self._position_of_0][0]:
        #     self._position_of_0 += 1

        # self._max = np.max(self.data_manager.candles[self.time_interval][coin_pair][:min(self._position_of_0, 100000)][:, :-1])
        # self._min = np.min(self.data_manager.candles[self.time_interval][coin_pair][:min(self._position_of_0, 100000)][:, :-1])
        # self.draw_candles(900 * (self.data_manager.candles[self.time_interval][coin_pair][:, :-1] - self._min) / (self._max - self._min) - 450)
        self.max_length = self._position_of_0

        self.__call__()
        # self.data_manager(time_interval)
        # self.redraw(self.coin_pair)

    def __call__(self, cursor_loc=(0.0, 0.0), offset=0):
        while self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self._position_of_0, -1]:
            self._position_of_0 += 1
            # to prevent IndexOutOfRangeError
            if (self.data_manager.pairs[self.coin_pair].candles[self.time_interval]).shape[0] <= self._position_of_0:
                break
        self._position_of_0 -= 1
        self.max_length = self._position_of_0
        glUseProgram(self.shader)

        if self.data_manager.upgraded:
            self.data_manager.upgraded = False
            glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1, self.sbo)
            for index, coin in enumerate(
                    ["AUDCAD", "AUDCHF", "AUDJPY", "AUDUSD", "CADCHF", "CADJPY", "CHFJPY", "EURAUD", "EURCAD", "EURCHF",
                     "EURGBP", "EURJPY", "EURUSD", "GBPAUD", "GBPCAD", "GBPCHF", "GBPJPY", "GBPUSD", "USDCAD", "USDCHF",
                     "USDJPY"]):
                # fill all buffer
                for interval, offset_ in zip([1, 2, 3, 4, 5, 10, 15, 30, 45, 60, 120, 180, 240, 360, 720, 1440],
                                             [0, 1600000, 2400000, 2933344, 3333344, 3653344, 3813344, 3920016, 3973360,
                                              4008928, 4035600, 4048944, 4057840, 4064512, 4068960, 4071184]):
                    glBufferSubData(
                        GL_SHADER_STORAGE_BUFFER,  # target
                        4072304 * index + offset_,  # offset
                        np.array(self.data_manager.pairs[coin].candles[interval][:, 1:], dtype=np.float32)  # data
                    )
        glUniform1i(self.coin_pair_id_loc, self.coin_pair_id)
        glUniform1i(self.time_interval_loc, self.time_interval)

        x_pos = cursor_loc[0]
        y_pos = cursor_loc[1]
        cursor = pyrr.Vector3((x_pos, y_pos, 1.0))
        glUniform3fv(self.cursor_loc, 1, cursor)
        glUniform1i(self.offset_loc, offset)
        # todo: upgrade chart if offset is changed
        self.begin = offset
        self.end = self.begin + 160  # 160 is max-candle-number for current candle size
        if self.end >= self._position_of_0: self.end = self._position_of_0 + 1
        self._translate = np.min(
            self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self.begin: self.end, 1:])
        self._scale = 1080 / (
                np.max(self.data_manager.pairs[self.coin_pair].candles[self.time_interval][self.begin: self.end,
                       1:]) - self._translate + 1e-8)
        glUniformMatrix4fv(self.scaling_loc, 1, GL_FALSE,
                           pyrr.matrix44.create_from_scale(np.array((1.0, self._scale, 1.0), dtype=np.float32)))
        glUniformMatrix4fv(self.translation_loc, 1, GL_FALSE,
                           pyrr.matrix44.create_from_translation(
                               np.array((0.0, -self._translate, 0.0), dtype=np.float32)))

        glBindVertexArray(self.vao)
        glDrawArrays(GL_POINTS, 0, min(self._position_of_0, 160))
        # self.draw_intensity()

    def draw_candles(self) -> None:
        """
        geometry: 1600*900
        check data shape, if length > 1600, show 1600 else show length
        create buffer
        generate shader
        add to render

        :return:
        """
        glBindBuffer(GL_SHADER_STORAGE_BUFFER, self.sbo)
        glBufferData(
            GL_SHADER_STORAGE_BUFFER,
            4072304 * 21,  # nbytes of SSBO
            None,
            GL_DYNAMIC_DRAW
        )
        glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1, self.sbo)
        for index, coin in enumerate(
                ["AUDCAD", "AUDCHF", "AUDJPY", "AUDUSD", "CADCHF", "CADJPY", "CHFJPY", "EURAUD", "EURCAD", "EURCHF",
                 "EURGBP", "EURJPY", "EURUSD", "GBPAUD", "GBPCAD", "GBPCHF", "GBPJPY", "GBPUSD", "USDCAD", "USDCHF",
                 "USDJPY"]):
            # fill all buffer
            for interval, offset in zip([1, 2, 3, 4, 5, 10, 15, 30, 45, 60, 120, 180, 240, 360, 720, 1440],
                                        [0, 1600000, 2400000, 2933344, 3333344, 3653344, 3813344, 3920016, 3973360,
                                         4008928, 4035600, 4048944, 4057840, 4064512, 4068960, 4071184]):
                glBufferSubData(
                    GL_SHADER_STORAGE_BUFFER,  # target
                    4072304 * index + offset,  # offset
                    np.array(self.data_manager.pairs[coin].candles[interval][:, 1:], dtype=np.float32)  # data
                )

        index = np.array([*range(160)], dtype=np.int32)

        glBindVertexArray(self.vao)

        glBindBuffer(GL_ARRAY_BUFFER, self.vbo)
        glBufferData(GL_ARRAY_BUFFER, index.nbytes, index, GL_STATIC_DRAW)
        glEnableVertexAttribArray(0)
        glVertexAttribIPointer(0, 1, GL_INT, 4, ctypes.c_void_p(0))

        glUseProgram(self.shader)
        glUniformMatrix4fv(self.projection_loc, 1, GL_FALSE,
                           pyrr.matrix44.create_orthogonal_projection_matrix(0, 1920, 0, 1080, 100,
                                                                             -100))  # (0, 1920, 0, 1080, -100, 100)
        glUniformMatrix4fv(self.scaling_loc, 1, GL_FALSE,
                           pyrr.matrix44.create_from_scale(np.array((1.0, self._scale, 1.0), dtype=np.float32)))
        glUniformMatrix4fv(self.translation_loc, 1, GL_FALSE,
                           pyrr.matrix44.create_from_translation(
                               np.array((0.0, -self._translate, 0.0), dtype=np.float32)))

    def draw_intensity(self):
        from utils.shader_program_pre_compiler import load_program
        self.intensity_shader = load_program(
            r"C:\Users\ysugi\PycharmProjects\Mt5Tester\indicator\shaders/Intensity.bin")
        self.intensity_vao = glGenVertexArrays(1)
        glBindVertexArray(self.intensity_vao)
        sbo = glGenBuffers(1)
        glBindBuffer(GL_SHADER_STORAGE_BUFFER, sbo)
        buf = np.zeros((4 * 4 * 100000 * 7,), dtype=np.float32)
        glBufferData(GL_SHADER_STORAGE_BUFFER, buf.nbytes, buf, GL_STATIC_COPY)
        glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 2, sbo)
        glUseProgram(self.intensity_shader)
        glDispatchCompute(100000, 1, 1)
        glMemoryBarrier(GL_SHADER_STORAGE_BARRIER_BIT)
        # debug
        # calculated_buffer = glGetBufferSubData(GL_SHADER_STORAGE_BUFFER, 0, buf.nbytes)
        # calculated_buffer = np.reshape(calculated_buffer, (4, 4*7, -1))
        with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester\indicator\shaders/Intensity_vertex.shader", "r") as f:
            v_src = f.read()
            f.close()
        with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester\indicator\shaders/Intensity_geometry.shader", "r") as f:
            g_src = f.read()
            f.close()
        with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester\indicator\shaders/Intensity_fragment.shader", "r") as f:
            f_src = f.read()
            f.close()
        self.intensity_render_shader = compileProgram(compileShader(v_src, GL_VERTEX_SHADER),
                                                      compileShader(g_src, GL_GEOMETRY_SHADER),
                                                      compileShader(f_src, GL_FRAGMENT_SHADER))
        glUseProgram(self.intensity_render_shader)
        self.intensity_projection_loc = glGetUniformLocation(self.intensity_render_shader, "projection")
        self.intensity_scaling_loc = glGetUniformLocation(self.intensity_render_shader, "scaling")
        self.intensity_translation_loc = glGetUniformLocation(self.intensity_render_shader, "translation")
        self.intensity_offset_loc = glGetUniformLocation(self.intensity_render_shader, "offset")
        self.intensity_coin_pair_id_loc = glGetUniformLocation(self.intensity_render_shader, "coin_pair_id")
        glUniformMatrix4fv(self.intensity_projection_loc, 1, GL_FALSE, pyrr.matrix44.create_orthogonal_projection_matrix(0, 1920, -80, 1000, -1600, 100))


    def draw_call_intensity(self, cursor_loc=(0.0, 0.0), offset=0):

        glUseProgram(self.intensity_render_shader)

        if self.data_manager.upgraded:
            self.data_manager.upgraded = False
            glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1, self.sbo)
            for index, coin in enumerate(
                    ["AUDCAD", "AUDCHF", "AUDJPY", "AUDUSD", "CADCHF", "CADJPY", "CHFJPY", "EURAUD", "EURCAD", "EURCHF",
                     "EURGBP", "EURJPY", "EURUSD", "GBPAUD", "GBPCAD", "GBPCHF", "GBPJPY", "GBPUSD", "USDCAD", "USDCHF",
                     "USDJPY"]):
                # fill all buffer
                for interval, offset_ in zip([1, 2, 3, 4, 5, 10, 15, 30, 45, 60, 120, 180, 240, 360, 720, 1440],
                                             [0, 1600000, 2400000, 2933344, 3333344, 3653344, 3813344, 3920016, 3973360,
                                              4008928, 4035600, 4048944, 4057840, 4064512, 4068960, 4071184]):
                    glBufferSubData(
                        GL_SHADER_STORAGE_BUFFER,  # target
                        4072304 * index + offset_,  # offset
                        np.array(self.data_manager.pairs[coin].candles[interval][:, 1:], dtype=np.float32)  # data
                    )

        glUniform1i(self.intensity_offset_loc, offset)
        glUniform1i(self.intensity_coin_pair_id_loc, self.coin_pair_id)
        # todo: upgrade chart if offset is changed
        self.begin = offset
        self.end = self.begin + 160  # 160 is max-candle-number for current candle size
        if self.end >= self._position_of_0: self.end = self._position_of_0 + 1
        glUniformMatrix4fv(self.intensity_scaling_loc, 1, GL_FALSE,
                           pyrr.matrix44.create_from_scale(np.array((1.0, 1.0, 1.0), dtype=np.float32)))
        glUniformMatrix4fv(self.intensity_translation_loc, 1, GL_FALSE,
                           pyrr.matrix44.create_from_translation(
                               np.array((0.0, 0.0, 0.0), dtype=np.float32)))

        glBindVertexArray(self.vao)
        glDrawArrays(GL_POINTS, 0, min(self._position_of_0, 160))


if __name__ == "__main__":
    glfw.init()
    window = glfw.create_window(1920, 1080, "text render", None, None)
    glfw.set_window_pos(window, 0, 30)
    glfw.make_context_current(window)
    glEnable(GL_BLEND)
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)

    from data_manager import DataManager

    data_manager = DataManager(
        time_from=(2022, 5, 10),
        time_to=(2022, 5, 21),
        login=25115284,
        server="MetaQuotes-Demo",
        password="4zatlbqx"
    )
    chart = Chart(data_manager, "AUDUSD")
    glLineWidth(3)
    while not glfw.window_should_close(window):
        glfw.poll_events()
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

        chart((0.0, 0.0), 0)

        glClearColor(0.0, 0.0, 0.0, 1.0)
        glfw.swap_buffers(window)
    glfw.terminate()
