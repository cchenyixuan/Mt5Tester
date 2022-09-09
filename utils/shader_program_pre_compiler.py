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


def dump_shading_program(shaders: tuple, export_dir="./dumped.bin"):
    program = compileProgram(*[compileShader(_src, _type) for _src, _type in shaders])
    length = glGetProgramiv(program, GL_PROGRAM_BINARY_LENGTH)
    shader_bin, shader_format, shader_length = glGetProgramBinary(program, length)
    with open(export_dir, "wb") as f:
        f.write(shader_format.tobytes())
        f.write(shader_length.tobytes())
        f.write(shader_bin.tobytes())
        f.close()
    print(f"Program dumped at {export_dir}.")


if __name__ == "__main__":
    glfw.init()
    window = glfw.create_window(100, 100, "dump", None, None)
    glfw.hide_window(window)
    glfw.make_context_current(window)

    vertex_src = """"""
    geometry_src = """"""
    fragment_src = """"""
    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester/indicator/shaders/coordinates_vertex.shader", "r") as f:
        for row in f:
            vertex_src += row
        f.close()
    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester/indicator/shaders/coordinates_geometry.shader", "r") as f:
        for row in f:
            geometry_src += row
        f.close()
    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester/indicator/shaders/coordinates_fragment.shader", "r") as f:
        for row in f:
            fragment_src += row
        f.close()
    dump_shading_program(
        ((vertex_src, GL_VERTEX_SHADER), (geometry_src, GL_GEOMETRY_SHADER), (fragment_src, GL_FRAGMENT_SHADER)),
        export_dir="../indicator/shaders/CoordinatesRender.bin")


    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester\indicator\shaders/Intensity.shader", "r") as f:
        c_src = f.read()
        f.close()
    dump_shading_program(((c_src, GL_COMPUTE_SHADER), ),
                         export_dir="../indicator/shaders/IntensityCompute.bin")
    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester\indicator\shaders/Intensity_vertex.shader", "r") as f:
        v_src = f.read()
        f.close()
    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester\indicator\shaders/Intensity_geometry.shader", "r") as f:
        g_src = f.read()
        f.close()
    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester\indicator\shaders/Intensity_fragment.shader", "r") as f:
        f_src = f.read()
        f.close()
    dump_shading_program(((v_src, GL_VERTEX_SHADER), (g_src, GL_GEOMETRY_SHADER), (f_src, GL_FRAGMENT_SHADER)),
                         export_dir="../indicator/shaders/IntensityRender.bin")
    vertex_src = """"""
    geometry_src = """"""
    fragment_src = """"""
    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester/text/shaders/chart_vertex.shader", "r") as f:
        for row in f:
            vertex_src += row
        f.close()
    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester/text/shaders/chart_geometry.shader", "r") as f:
        for row in f:
            geometry_src += row
        f.close()
    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester/text/shaders/demo_fragment.shader", "r") as f:
        for row in f:
            fragment_src += row
        f.close()
    dump_shading_program(((vertex_src, GL_VERTEX_SHADER), (geometry_src, GL_GEOMETRY_SHADER), (fragment_src, GL_FRAGMENT_SHADER)),
                         export_dir="../indicator/shaders/CandleRender.bin")

    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester\indicator\shaders/SimpleMovingAverage.shader", "r") as f:
        c_src = f.read()
        f.close()
    dump_shading_program(((c_src, GL_COMPUTE_SHADER), ),
                         export_dir="../indicator/shaders/SimpleMovingAverageCompute.bin")

    vertex_src = """"""
    fragment_src = """"""
    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester/indicator\shaders/SimpleMovingAverage_vertex.shader", "r") as f:
        for row in f:
            vertex_src += row
        f.close()
    with open(r"C:\Users\ysugi\PycharmProjects\Mt5Tester/text/shaders/demo_fragment.shader", "r") as f:
        for row in f:
            fragment_src += row
        f.close()
    dump_shading_program(
        ((vertex_src, GL_VERTEX_SHADER), (fragment_src, GL_FRAGMENT_SHADER)),
        export_dir="../indicator/shaders/SimpleMovingAverageRender.bin")

    glfw.terminate()
