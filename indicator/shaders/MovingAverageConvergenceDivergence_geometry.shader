# version 460 core
layout (points) in;
layout (line_strip, max_vertices = 2) out;
in VertexAttri{
    vec4 vertex_data;
    int index;
}vertex_attri_[];
out vec4 V_Color;
uniform mat4 projection;
uniform mat4 scaling;
uniform mat4 translation;
uniform int offset;
uniform vec4 cursor;


void build_macd(void){
    float dif;
    float dif_before;
    float dea;
    float dea_before;
    float macd;
    float macd_before;

    dif = vertex_attri_[0].vertex_data.x;
    dif_before = dif - vertex_attri_[0].vertex_data.z;
    dea = vertex_attri_[0].vertex_data.y;
    dif = dea - vertex_attri_[0].vertex_data.w;
    // dif-line
    if(dif>=dif_before){V_Color = vec4(0.0, 1.0, 0.0, 1.0);}
    else{V_Color = vec4(1.0, 0.0, 0.0, 1.0);}
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, dif, 0.0, 1.0);
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4((vertex_attri_[0].index-1)*10, dif_before, 0.0, 1.0);
    EmitVertex();
    EndPrimitive();

    /*/ dea-line
    if(dif>=dif_before){V_Color = vec4(0.0, 1.0, 0.0, 1.0);}
    else{V_Color = vec4(1.0, 0.0, 0.0, 1.0);}
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, dea, 0.0, 1.0);
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, dea_before, 0.0, 1.0);
    EmitVertex();
    EndPrimitive();

    // macd-line
    if(dif>=dif_before){V_Color = vec4(0.0, 1.0, 0.0, 1.0);}
    else{V_Color = vec4(1.0, 0.0, 0.0, 1.0);}
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, dif-dea, 0.0, 1.0);
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, dif_before-dea_before, 0.0, 1.0);
    EmitVertex();
    EndPrimitive();
    */
}

void main(){
    build_macd();
}