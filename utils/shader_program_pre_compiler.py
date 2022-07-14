from OpenGL.GL import *
import glfw
from OpenGL.GL.shaders import compileProgram, compileShader


def dump_program(shader_src: str, shader_type=GL_COMPUTE_SHADER, export_dir="./dumped.bin"):
    program = compileProgram(compileShader(shader_src, shader_type))
    length = glGetProgramiv(program, GL_PROGRAM_BINARY_LENGTH)
    shader_bin, shader_format, shader_length = glGetProgramBinary(program, length)
    with open(export_dir, "wb") as f:
        f.write(shader_format.tobytes())
        f.write(shader_length.tobytes())
        f.write(shader_bin.tobytes())
        f.close()
    print(f"Program dumped at {export_dir}.")


def load_program(load_dir="./dumped.bin"):
    with open(load_dir, "rb") as f:
        file_content = f.read()
        f.close()
    program = glCreateProgram()
    glProgramBinary(
        program,
        int.from_bytes(file_content[:4], "little"),  # shader_format
        file_content[8:],  # shader_content
        int.from_bytes(file_content[4:8], "little")  # shader_length
    )
    return program


if __name__ == "__main__":
    glfw.init()
    window = glfw.create_window(100, 100, "dump", None, None)
    glfw.hide_window(window)
    glfw.make_context_current(window)

    shader_content = """"""
    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester\indicator\shaders\Intensity.shader", "r") as f:
        for row in f:
            shader_content += row
        f.close()
    dump_program(shader_content, GL_COMPUTE_SHADER)
    shader = load_program()

    glfw.terminate()
