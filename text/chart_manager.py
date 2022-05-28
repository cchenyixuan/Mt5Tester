import pyrr
import numpy as np
from OpenGL.GL import *
import glfw
from OpenGL.GL.shaders import compileProgram, compileShader


class Chart:
    def __init__(self, data_manger, coin_pair="EURUSD", time_interval="1m"):
        self.dm = data_manger
        self.dm(time_interval)

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
        self.cursor_loc = glGetUniformLocation(self.shader, "cursor")
        self.offset_loc = glGetUniformLocation(self.shader, "offset")

        self.coin_pair = coin_pair
        self.time_interval = time_interval

        self._position_of_0 = 0
        while self.dm.candles[self.time_interval][coin_pair][self._position_of_0][0]:
            self._position_of_0 += 1

        self._max = np.max(self.dm.candles[self.time_interval][coin_pair][:min(self._position_of_0, 100000)][:, :-1])
        self._min = np.min(self.dm.candles[self.time_interval][coin_pair][:min(self._position_of_0, 100000)][:, :-1])
        self.draw_candles(900*(self.dm.candles[self.time_interval][coin_pair][:, :-1]-self._min)/(self._max-self._min)-450)
        self.max_length = self._position_of_0

    def redraw(self, coin_pair):
        self.coin_pair = coin_pair
        self._position_of_0 = 0
        while self.dm.candles[self.time_interval][coin_pair][self._position_of_0][0]:
            self._position_of_0 += 1
        self._max = np.max(self.dm.candles[self.time_interval][coin_pair][:min(self._position_of_0, 100000)][:, :-1])
        self._min = np.min(self.dm.candles[self.time_interval][coin_pair][:min(self._position_of_0, 100000)][:, :-1])
        self.draw_candles(900 * (self.dm.candles[self.time_interval][coin_pair][:, :-1] - self._min) / (self._max - self._min) - 450)
        self.max_length = self._position_of_0

    def redraw_time_interval(self, time_interval):
        self.time_interval = time_interval
        self.dm(time_interval)
        self.redraw(self.coin_pair)

    def __call__(self, cursor_loc=(0.0, 0.0), offset=0):
        glUseProgram(self.shader)
        x_pos = cursor_loc[0]-960
        y_pos = cursor_loc[1]+540
        cursor = pyrr.Vector3((x_pos, y_pos, 1.0))
        glUniform3fv(self.cursor_loc, 1, cursor)
        glUniform1i(self.offset_loc, offset)
        glBindVertexArray(self.vao)
        glDrawArrays(GL_POINTS, 0, min(self._position_of_0, 160))

    def draw_candles(self, data: np.ndarray) -> None:
        """
        geometry: 1600*900
        check data shape, if length > 1600, show 1600 else show length
        create buffer
        generate shader
        add to render

        :param data:
        :return:
        """

        glBindBuffer(GL_SHADER_STORAGE_BUFFER, self.sbo)
        glBufferData(GL_SHADER_STORAGE_BUFFER, data.nbytes, data, GL_STATIC_COPY)
        glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1, self.sbo)
        index = np.array([*range(data.shape[0])], dtype=np.int32)

        glBindVertexArray(self.vao)

        glBindBuffer(GL_ARRAY_BUFFER, self.vbo)
        glBufferData(GL_ARRAY_BUFFER, index.nbytes, index, GL_STATIC_DRAW)
        glEnableVertexAttribArray(0)
        glVertexAttribIPointer(0, 1, GL_INT, 4, ctypes.c_void_p(0))

        glUseProgram(self.shader)
        glUniformMatrix4fv(self.projection_loc, 1, GL_FALSE,
                           pyrr.matrix44.create_orthogonal_projection_matrix(-960, 960, -540, 540, 100, -100))



