# version 460 core
layout(location=0) in vec4 V_Pos;
out vec4 V_Color;

uniform mat4 projection;
void main()
{
    gl_Position = projection*V_Pos;
    V_Color = V_Pos;
}
