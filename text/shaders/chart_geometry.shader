# version 460 core
layout (points) in;
layout (triangle_strip, max_vertices = 12) out;
in VertexAttri{
    vec4 V_Color;
    vec4 market;
    vec4 pos;
    int index;
}vertex_attri_[];
out vec4 V_Color;
uniform mat4 projection;
uniform vec3 cursor;

void build_candle(float x_position){
    V_Color = vec4(1.0, 0.9, 0.1, 1.0);
    gl_Position = projection*vec4(x_position+0.05*20, vertex_attri_[0].market.x+90, 0.0, 1.0); // 1:low
    EmitVertex();
    gl_Position = projection*vec4(x_position-0.05*20, vertex_attri_[0].market.x+90, 0.0, 1.0); // 1:low
    EmitVertex();
    if(x_position-4<cursor.x && x_position+4>cursor.x){V_Color = vec4(1.0, 1.0, 0.1, 1.0);}
    else{V_Color = vertex_attri_[0].V_Color;} // gs_in[0] since there's only one input vertex
    gl_Position = projection*vec4(x_position+0.05*20, vertex_attri_[0].market.y+90, 0.0, 1.0); // 2:bottom-right
    EmitVertex();
    gl_Position = projection*vec4(x_position-0.05*20, vertex_attri_[0].market.y+90, 0.0, 1.0); // 2:bottom-right
    EmitVertex();

    gl_Position = projection*vec4(x_position+0.2*20, vertex_attri_[0].market.y+90, 0.0, 1.0); // 2:bottom-right
    EmitVertex();
    gl_Position = projection*vec4(x_position-0.2*20, vertex_attri_[0].market.y+90, 0.0, 1.0); // 2:bottom-right
    EmitVertex();
    gl_Position = projection*vec4(x_position+0.2*20, vertex_attri_[0].market.z+90, 0.0, 1.0); // 2:bottom-right
    EmitVertex();
    gl_Position = projection*vec4(x_position-0.2*20, vertex_attri_[0].market.z+90, 0.0, 1.0); // 3:top-left
    EmitVertex();

    gl_Position = projection*vec4(x_position+0.05*20, vertex_attri_[0].market.z+90, 0.0, 1.0); // 4:top-right
    EmitVertex();
    gl_Position = projection*vec4(x_position-0.05*20, vertex_attri_[0].market.z+90, 0.0, 1.0); // 4:top-right
    EmitVertex();
    V_Color = vec4(0.4, 0.3, 1.0, 1.0);
    gl_Position = projection*vec4(x_position+0.05*20, vertex_attri_[0].market.w+90, 0.0, 1.0); // 5:top
    EmitVertex();
    gl_Position = projection*vec4(x_position-0.05*20, vertex_attri_[0].market.w+90, 0.0, 1.0); // 5:top
    EmitVertex();
    EndPrimitive();
}

void main(){
    build_candle(vertex_attri_[0].pos.x);
}