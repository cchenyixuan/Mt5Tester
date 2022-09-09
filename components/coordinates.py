import glfw
import pyrr
import numpy as np
from OpenGL.GL import *
from utils.shader_program_pre_compiler import load_program


class CandleChart:
    def __init__(self):
        # common status shared between charts
        glfw.init()
        window = glfw.create_window(1000, 1000, "", None, None)
        glfw.make_context_current(window)
        # private variables
        self.render_shader = load_program(r"C:\Users\ysugi\PycharmProjects\Mt5Tester\indicator\shaders\CoordinatesRender.bin")

        # gl buffer objects
        self.vao = glGenVertexArrays(1)
        glBindVertexArray(self.vao)
        self.vbo = glGenBuffers(1)
        glBindBuffer(GL_ARRAY_BUFFER, self.vbo)
        glBufferData(GL_ARRAY_BUFFER, 13*4*4, np.array([[0.0, 1/13*i, 0.0, 1.0] for i in range(13)], dtype=np.float32), GL_STATIC_DRAW)
        glEnableVertexAttribArray(0)
        glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, 16, ctypes.c_void_p(0))
        # shader uniforms
        self.projection_loc = glGetUniformLocation(self.render_shader, "projection")
        self.scaling_loc = glGetUniformLocation(self.render_shader, "scaling")
        self.translation_loc = glGetUniformLocation(self.render_shader, "translation")
        glUseProgram(self.render_shader)
        glUniformMatrix4fv(self.projection_loc, 1, GL_FALSE,
                           pyrr.matrix44.create_orthogonal_projection_matrix(-0.2, 10, -0.5, 1, -10, 10))
        glUniformMatrix4fv(self.scaling_loc, 1, GL_FALSE,
                           pyrr.matrix44.create_identity())
        glUniformMatrix4fv(self.translation_loc, 1, GL_FALSE,
                           pyrr.matrix44.create_identity())
        glLineWidth(3)
        while not glfw.window_should_close(window):
            glfw.poll_events()
            glClearColor(0.2, 0.3, 0.2, 1.0)
            glClear(GL_COLOR_BUFFER_BIT)
            glBindVertexArray(self.vao)
            glDrawArrays(GL_POINTS, 0, 13)

            glfw.swap_buffers(window)
        glfw.terminate()


CandleChart()