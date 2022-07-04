# version 460 core
layout(location=0) in int Candle_id;

layout(std140, binding=1) buffer Data{
    vec4 data[];
};

out VertexAttri{
    vec4 V_Color;
    vec4 market;
    vec4 pos;
    int index;
}vertex_attri;

uniform mat4 projection;
uniform mat4 scaling;
uniform mat4 translation;
uniform int offset;
void main()
{
    //gl_Position = vec4(Candle_id-960, data[Candle_id].w+90, 0.0, 1.0);
    vertex_attri.index = Candle_id;
    vertex_attri.pos = vec4(Candle_id*10, data[Candle_id+offset].w, 0.0, 1.0);  // -960--
    if(data[Candle_id+offset].x > data[Candle_id+offset].w){
        vertex_attri.market = vec4(data[Candle_id+offset].zwxy);
    }
    else{
        vertex_attri.market = vec4(data[Candle_id+offset].zxwy);
    }
    if(Candle_id+offset==0){
        vertex_attri.V_Color = vec4(0.0, 1.0, 0.0, 1.0);
    }
    else{
        if(data[Candle_id+offset].w>data[Candle_id+offset-1].w){
            vertex_attri.V_Color = vec4(0.0, 1.0, 0.0, 1.0);
        }
        else {
            vertex_attri.V_Color = vec4(1.0, 0.0, 0.0, 1.0);
        }
    }
}
