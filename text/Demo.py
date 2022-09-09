import time

import pyrr
import numpy as np
from OpenGL.GL import *
import glfw
from OpenGL.GL.shaders import compileProgram, compileShader


from text_manager import TextRenderer


if __name__ == "__main__":
    glfw.init()
    window = glfw.create_window(1920, 1080, "text render", None, None)
    glfw.set_window_pos(window, 0, 30)
    glfw.make_context_current(window)

    console_buffer = """>>>"""

    def char_clb(*args):
        global console_buffer
        char = chr(args[1])
        console_buffer += char

    def key_clb(*args):
        global console_buffer
        key = args[1]
        action = args[3]
        print(*args)
        if key == glfw.KEY_BACKSPACE and (action == glfw.PRESS or action == glfw.REPEAT) and len(console_buffer) > 3:
            if console_buffer[-4:] == "\n>>>":
                console_buffer = console_buffer.rstrip(">")
            console_buffer = console_buffer[:-1]
        if key == glfw.KEY_TAB and (action == glfw.PRESS or action == glfw.REPEAT):
            console_buffer += "\t"
        if key == glfw.KEY_ENTER and (action == glfw.PRESS or action == glfw.REPEAT):
            console_buffer += "\n>>>"
        if key == glfw.KEY_ESCAPE and action == glfw.PRESS:
            glfw.set_window_should_close(window, True)

    glfw.set_char_callback(window, char_clb)
    glfw.set_key_callback(window, key_clb)

    vertex_src = """"""
    fragment_src = """"""
    with open(r"../text/shaders/demo_vertex.shader", "r") as f:
        for row in f:
            vertex_src += row
        f.close()
    with open(r"../text/shaders/demo_fragment.shader", "r") as f:
        for row in f:
            fragment_src += row
        f.close()
    shader = compileProgram(compileShader(vertex_src, GL_VERTEX_SHADER),
                            compileShader(fragment_src, GL_FRAGMENT_SHADER))
    projection_loc = glGetUniformLocation(shader, "projection")
    glUseProgram(shader)
    glUniformMatrix4fv(projection_loc, 1, GL_FALSE, pyrr.matrix44.create_orthogonal_projection_matrix(-960, 960, -540, 540, 100, -100))
    vao = glGenVertexArrays(1)
    glBindVertexArray(vao)
    vbo = glGenBuffers(1)
    glBindBuffer(GL_ARRAY_BUFFER, vbo)
    glBufferData(GL_ARRAY_BUFFER, 16*4, np.array([[-960, 540, 0.0, 1.0], [960, 540, 0.0, 1.0], [-960, -540, 0.0, 1.0], [960, -540, 0.0, 1.0]], dtype=np.float32), GL_STATIC_DRAW)
    glEnableVertexAttribArray(0)
    glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, 16, ctypes.c_void_p(0))
    glEnable(GL_BLEND)
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
    renderer = TextRenderer(1920, 1080)

    while not glfw.window_should_close(window):
        glfw.poll_events()
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
        glClearColor(0.2, 0.2, 0.2, 1.0)

        glUseProgram(shader)
        glBindVertexArray(vao)
        glDrawArrays(GL_TRIANGLE_STRIP, 0, 4)

        renderer.render_text("{}".format("Necro 0123456789"), 0.0, 300.0-480, 0.5, [0.9, 0.7, 0.3])
        renderer.render_text("{}".format("Necro 0123456789"), 0.0, 250.0-480, 0.75, [0.6, 0.2, 0.8])
        renderer.render_text("{}".format("Necro 0123456789"), 0.0, 187.0-480, 1.0, [0.1, 0.8, 0.9])
        renderer.render_text("{}".format("Necro 0123456789"), 0.0, 190.0-480, 1.0, [0.7, 0.8, 0.9])

        renderer.render_text("{}".format("Necro 0123456789"), 5.0+640, 300.0, 0.5, [0.9, 0.7, 0.3])
        renderer.render_text("{}".format("Necro 0123456789"), 5.0+640, 250.0, 0.5, [0.9, 0.7, 0.3])
        renderer.render_text("{}".format("Necro 0123456789"), 5.0+640, 187.0, 0.5, [0.9, 0.7, 0.3])
        renderer.render_text("{}".format("Necro 0123456789"), 5.0+640, 190.0, 0.5, [0.9, 0.7, 0.3])

        renderer.render_with_encoding(fragment_src, -900, 480, 0.5, (0.1, 0.8, 0.9))
        renderer.render_with_encoding(vertex_src, -180, 480, 0.5, (0.9, 0.7, 0.2))

        renderer.render_with_encoding(console_buffer, -900, -400, 0.3, (np.sin(glfw.get_time()), 0.7, 0.2))

        glfw.swap_buffers(window)

    glfw.terminate()
