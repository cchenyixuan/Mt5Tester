# version 460 core
layout (points) in;
layout (line_strip, max_vertices = 4) out;
in VertexAttri{
    vec4 V_Color;
    vec4 pos;
}vertex_attri_[];
out vec4 V_Color;
uniform mat4 projection;
uniform mat4 scaling;
uniform mat4 translation;

void build_Y(){
    V_Color = vertex_attri_[0].V_Color;
    gl_Position = projection*vec4(vertex_attri_[0].pos.xyz, 1.0);
    EmitVertex();
    gl_Position = projection*vec4(vertex_attri_[0].pos.x-0.05, vertex_attri_[0].pos.yz, 1.0);
    EmitVertex();
    gl_Position = projection*vec4(vertex_attri_[0].pos.x, vertex_attri_[0].pos.y, vertex_attri_[0].pos.z, 1.0);
    EmitVertex();
    gl_Position = projection*vec4(vertex_attri_[0].pos.x, vertex_attri_[0].pos.y-0.1, vertex_attri_[0].pos.z, 1.0);
    EmitVertex();
    EndPrimitive();
}

void main(){
    build_Y();
}
