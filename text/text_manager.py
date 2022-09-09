import freetype
import pyrr
import numpy as np
from OpenGL.GL import *
import glfw
from OpenGL.GL.shaders import compileProgram, compileShader

from random import choice
import os


class Character:
    def __init__(self, texture_id, size, bearing, advance):
        self.texture_id = texture_id
        self.size = size
        self.bearing = bearing
        self.advance = advance


class TextRenderer:
    def __init__(self, width=400.0, height=400.0):
        self.character_dict = {}
        self.vertex_src = """"""
        self.fragment_src = """"""
        with open(r"../text/shaders/text_vertex.shader", "r") as f:
            for row in f:
                self.vertex_src += row
            f.close()
        with open(r"../text/shaders/text_fragment.shader", "r") as f:
            for row in f:
                self.fragment_src += row
            f.close()

        glPixelStorei(GL_UNPACK_ALIGNMENT, 1)
        for c in range(128):
            face = freetype.Face(r"../text/fonts/comic.ttf")
            face.set_pixel_sizes(0, 64)
            face.load_char(chr(c))
            texture = glGenTextures(1)
            glBindTexture(GL_TEXTURE_2D, texture)
            glTexImage2D(GL_TEXTURE_2D, 0, GL_RED, face.glyph.bitmap.width, face.glyph.bitmap.rows,
                         0, GL_RED, GL_UNSIGNED_BYTE,
                         face.glyph.bitmap.buffer)  # target,level,internal_format,width,height,border,format,type,pixels
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE)
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE)
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR)
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR)
            glGenerateTextureMipmap(texture)
            self.character_dict[c] = Character(texture, np.array([face.glyph.bitmap.width, face.glyph.bitmap.rows]),
                                               np.array([face.glyph.bitmap_left, face.glyph.bitmap_top]),
                                               face.glyph.advance.x)
        self.shader = compileProgram(compileShader(self.vertex_src, GL_VERTEX_SHADER),
                                     compileShader(self.fragment_src, GL_FRAGMENT_SHADER))
        glUseProgram(self.shader)
        projection_loc = glGetUniformLocation(self.shader, "projection")
        projection = pyrr.matrix44.create_orthogonal_projection_matrix(-0.5*width, 0.5*width, -0.5*height, 0.5*height, 100, -100)
        glUniformMatrix4fv(projection_loc, 1, GL_FALSE, projection)

        self.vao = glGenVertexArrays(1)
        glBindVertexArray(self.vao)
        self.vbo = glGenBuffers(1)
        glBindBuffer(GL_ARRAY_BUFFER, self.vbo)
        glBufferData(GL_ARRAY_BUFFER, 24 * 4, None, GL_DYNAMIC_DRAW)
        glEnableVertexAttribArray(0)
        glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, 16, ctypes.c_void_p(0))

    def render_text(self, text, x, y, scale, color=(1.0, 1.0, 1.0)):
        """
        Do Not Call This Function Directly!
        :param text:
        :param x:
        :param y:
        :param scale:
        :param color:
        :return:
        """
        glUseProgram(self.shader)
        textColor_loc = glGetUniformLocation(self.shader, "textColor")
        glUniform3f(textColor_loc, color[0], color[1], color[2])
        glActiveTexture(GL_TEXTURE0)
        glBindVertexArray(self.vao)
        for c in text:
            cha = self.character_dict[ord(c)]
            x_pos = x + cha.bearing[0] * scale
            y_pos = y - (cha.size[1] - cha.bearing[1]) * scale

            w = cha.size[0] * scale
            h = cha.size[1] * scale

            vertices = np.array([x_pos, y_pos + h, 0.0, 0.0,
                                 x_pos, y_pos, 0.0, 1.0,
                                 x_pos + w, y_pos, 1.0, 1.0,

                                 x_pos, y_pos + h, 0.0, 0.0,
                                 x_pos + w, y_pos, 1.0, 1.0,
                                 x_pos + w, y_pos + h, 1.0, 0.0], dtype=np.float32)
            glBindTexture(GL_TEXTURE_2D, cha.texture_id)
            glBindBuffer(GL_ARRAY_BUFFER, self.vbo)
            glBufferSubData(GL_ARRAY_BUFFER, 0, vertices.nbytes, vertices)
            glBindBuffer(GL_ARRAY_BUFFER, 0)
            glDrawArrays(GL_TRIANGLES, 0, 6)
            x += (cha.advance >> 6) * scale

        glBindVertexArray(0)
        glBindTexture(GL_TEXTURE_2D, 0)

        return

    def render_with_encoding(self, text, x, y, scale, color, line_width=40):
        start_x = x
        start_y = y
        text = str(text)  # force type conversion
        text += "\n"
        import re
        find_mark = re.compile(r"(.*?[\n\t])", re.S)
        line_buffer = """"""
        for part in re.findall(find_mark, text):
            # check if 'tab' required
            if part[-1:] == "\t":
                line_buffer += part[:-1] + "    "
            # check if 'new-line' required
            if part[-1:] == "\n":
                line_buffer += part[:-1]
                self.render_text(line_buffer, x, y, scale, color)
                y -= line_width
                line_buffer = """"""


if __name__ == "__main__":
    glfw.init()
    window = glfw.create_window(400, 400, "text render", None, None)
    glfw.set_window_pos(window, 400, 400)
    glfw.make_context_current(window)

    glEnable(GL_BLEND)
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
    renderer = TextRenderer()
    while not glfw.window_should_close(window):
        glfw.poll_events()
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

        renderer.render_text("{}".format("Necro 0123456789"), 5.0, 300.0, 0.5, [0.9, 0.7, 0.3])
        renderer.render_text("{}".format("Necro 0123456789"), 5.0, 250.0, 0.75, [0.6, 0.2, 0.8])
        renderer.render_text("{}".format("Necro 0123456789"), 5.0, 190.0, 1.0, [0.7, 0.8, 0.9])

        glfw.swap_buffers(window)

    glfw.terminate()
