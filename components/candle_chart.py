import pyrr
import numpy as np
from OpenGL.GL import *
from utils.shader_program_pre_compiler import load_program


class CandleChart:
    def __init__(self, status):
        # common status shared between charts
        self.status = status

        # private variables
        self.render_shader = load_program(r".\indicator\shaders\CandleRender.bin")

        # gl buffer objects
        self.vao = glGenVertexArrays(1)
        self.render_sbo = glGenBuffers(1)
        self.vbo = glGenBuffers(1)

        # shader uniforms
        self.projection_loc = glGetUniformLocation(self.render_shader, "projection")
        self.scaling_loc = glGetUniformLocation(self.render_shader, "scaling")
        self.translation_loc = glGetUniformLocation(self.render_shader, "translation")
        self.cursor_loc = glGetUniformLocation(self.render_shader, "cursor")
        self.offset_loc = glGetUniformLocation(self.render_shader, "offset")
        self.coin_pair_id_loc = glGetUniformLocation(self.render_shader, "coin_pair_id")
        self.time_interval_loc = glGetUniformLocation(self.render_shader, "time_interval")

        # initialize GPU variables
        self.maintain_buffer(init=True)
        self.maintain_uniform(init=True)

    def __call__(self, *args, **kwargs):
        glUseProgram(self.render_shader)
        self.maintain_buffer()
        self.maintain_uniform()

        # draw call
        glUseProgram(self.render_shader)
        glBindVertexArray(self.vao)
        glDrawArrays(GL_POINTS, 0, min(self.status.current - self.status.offset + 1, 160))

    def maintain_buffer(self, init=False):
        if init:
            glUseProgram(self.render_shader)
            # No data upgraded
            glBindVertexArray(self.vao)
            # render_sbo
            glBindBuffer(GL_SHADER_STORAGE_BUFFER, self.render_sbo)
            glBufferData(
                GL_SHADER_STORAGE_BUFFER,
                4072304 * 21,  # nbytes of SSBO
                None,
                GL_DYNAMIC_DRAW
            )
            glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1, self.render_sbo)

            for index, coin in enumerate([
                "AUDCAD",
                "AUDCHF",
                "AUDJPY",
                "AUDUSD",
                "CADCHF",
                "CADJPY",
                "CHFJPY",
                "EURAUD",
                "EURCAD",
                "EURCHF",
                "EURGBP",
                "EURJPY",
                "EURUSD",
                "GBPAUD",
                "GBPCAD",
                "GBPCHF",
                "GBPJPY",
                "GBPUSD",
                "USDCAD",
                "USDCHF",
                "USDJPY"
            ]):
                # fill all buffer
                for interval, offset in zip(
                        [
                            1, 2, 3, 4, 5, 10, 15, 30, 45, 60, 120, 180, 240, 360, 720, 1440
                        ],
                        [
                            0, 1600000, 2400000, 2933344, 3333344, 3653344, 3813344, 3920016,
                            3973360, 4008928, 4035600, 4048944, 4057840, 4064512, 4068960, 4071184
                        ]
                ):
                    glBufferSubData(
                        GL_SHADER_STORAGE_BUFFER,  # target
                        4072304 * index + offset,  # offset
                        np.array(self.status.data_manager.pairs[coin].candles[interval][:, 1:], dtype=np.float32)
                    )

            # render_vbo
            glBindBuffer(GL_ARRAY_BUFFER, self.vbo)
            buf = np.array([*range(160)], dtype=np.int32)
            glBufferData(GL_ARRAY_BUFFER, buf.nbytes, buf, GL_STATIC_DRAW)
            glEnableVertexAttribArray(0)
            glVertexAttribIPointer(0, 1, GL_INT, 4, ctypes.c_void_p(0))

        else:
            # upgrade data and buffer if is required
            if self.status.data_manager.upgraded and not self.status.data_manager.upgrading:
                glUseProgram(self.render_shader)
                glBindVertexArray(self.vao)
                glBindBuffer(GL_SHADER_STORAGE_BUFFER, self.render_sbo)
                for index, coin in enumerate([
                    "AUDCAD",
                    "AUDCHF",
                    "AUDJPY",
                    "AUDUSD",
                    "CADCHF",
                    "CADJPY",
                    "CHFJPY",
                    "EURAUD",
                    "EURCAD",
                    "EURCHF",
                    "EURGBP",
                    "EURJPY",
                    "EURUSD",
                    "GBPAUD",
                    "GBPCAD",
                    "GBPCHF",
                    "GBPJPY",
                    "GBPUSD",
                    "USDCAD",
                    "USDCHF",
                    "USDJPY"
                ]):
                    # fill all buffer
                    for interval, offset in zip(
                            [
                                1, 2, 3, 4, 5, 10, 15, 30, 45, 60, 120, 180, 240, 360, 720, 1440
                            ],
                            [
                                0, 1600000, 2400000, 2933344, 3333344, 3653344, 3813344, 3920016,
                                3973360, 4008928, 4035600, 4048944, 4057840, 4064512, 4068960, 4071184
                            ]
                    ):
                        glBufferSubData(
                            GL_SHADER_STORAGE_BUFFER,  # target
                            4072304 * index + offset,  # offset
                            np.array(self.status.data_manager.pairs[coin].candles[interval][:, 1:], dtype=np.float32)
                        )

    def maintain_uniform(self, init=False):
        if init:
            glUseProgram(self.render_shader)
            glUniformMatrix4fv(self.projection_loc, 1, GL_FALSE,
                               pyrr.matrix44.create_orthogonal_projection_matrix(0, 1920, -500, 800, -1600, 100))
            lower_boundary = np.min(self.status.data_manager.pairs[self.status.coin_pairs[self.status.coin_pair_id]].candles[self.status.time_interval][self.status.offset: self.status.offset + min(self.status.current - self.status.offset + 1, 160), 1:])
            upper_boundary = np.max(self.status.data_manager.pairs[self.status.coin_pairs[self.status.coin_pair_id]].candles[self.status.time_interval][self.status.offset: self.status.offset + min(self.status.current - self.status.offset + 1, 160), 1:])
            scale_factor = 800 / (upper_boundary - lower_boundary + 1e-8)  # avoid ZeroDivisionError
            glUniformMatrix4fv(
                self.scaling_loc,
                1,
                GL_FALSE,
                pyrr.matrix44.create_from_scale(np.array((1.0, scale_factor, 1.0), dtype=np.float32))
            )
            glUniformMatrix4fv(
                self.translation_loc,
                1,
                GL_FALSE,
                pyrr.matrix44.create_from_translation(np.array((0.0, -lower_boundary, 0.0), dtype=np.float32))
            )
            glUniform4fv(self.cursor_loc, 1, pyrr.Vector4(self.status.cursor))
            glUniform1i(self.offset_loc, self.status.offset)
            glUniform1i(self.coin_pair_id_loc, self.status.coin_pair_id)
            glUniform1i(self.time_interval_loc, self.status.time_interval)
        else:
            if self.status.modified:
                glUseProgram(self.render_shader)
                lower_boundary = np.min(
                    self.status.data_manager.pairs[self.status.coin_pairs[self.status.coin_pair_id]].candles[
                        self.status.time_interval][
                    self.status.offset: self.status.offset + min(self.status.current - self.status.offset + 1, 160),
                    1:])
                upper_boundary = np.max(
                    self.status.data_manager.pairs[self.status.coin_pairs[self.status.coin_pair_id]].candles[
                        self.status.time_interval][
                    self.status.offset: self.status.offset + min(self.status.current - self.status.offset + 1, 160),
                    1:])
                scale_factor = 800 / (upper_boundary - lower_boundary + 1e-8)  # avoid ZeroDivisionError
                glUniformMatrix4fv(
                    self.scaling_loc,
                    1,
                    GL_FALSE,
                    pyrr.matrix44.create_from_scale(np.array((1.0, scale_factor, 1.0), dtype=np.float32))
                )
                glUniformMatrix4fv(
                    self.translation_loc,
                    1,
                    GL_FALSE,
                    pyrr.matrix44.create_from_translation(np.array((0.0, -lower_boundary, 0.0), dtype=np.float32))
                )
                glUniform4fv(self.cursor_loc, 1, pyrr.Vector4(self.status.cursor))
                glUniform1i(self.offset_loc, self.status.offset)
                glUniform1i(self.coin_pair_id_loc, self.status.coin_pair_id)
                glUniform1i(self.time_interval_loc, self.status.time_interval)
