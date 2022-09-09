# version 460 core
layout(location=0) in vec4 V_Pos;

out VertexAttri{
    vec4 V_Color;
    vec4 pos;
}vertex_attri;

uniform mat4 projection;
uniform mat4 scaling;
uniform mat4 translation;

void main(){
    vertex_attri.V_Color = vec4(1.0, 0.7, 0.9, 1.0);
    vertex_attri.pos = vec4(V_Pos.xyzw);

}