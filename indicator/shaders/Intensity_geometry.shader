# version 460 core
layout (points) in;
layout (triangle_strip, max_vertices = 128) out;
in VertexAttri{
    mat4 intensity;
    mat4 intensity_last;
    mat4 intensity_dual;
    mat4 intensity_dual_last;
    int index;
}vertex_attri_[];
out vec4 V_Color;
uniform mat4 projection;
uniform mat4 scaling;
uniform mat4 translation;
uniform int offset;
uniform vec4 cursor;


void build_ribbon(void){

    V_Color = vec4(1.0, 0.0, 0.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[3].w-20, -1440.0, 1.0); // 1440 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[3].w+20, -1440.0, 1.0); // 1440 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[3].w-20, -1440.0, 1.0); // 1440 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[3].w+20, -1440.0, 1.0); // 1440 left-above
    EmitVertex();

    V_Color = vec4(1.0, 1.0, 0.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[3].z-19, -720.0, 1.0); // 720 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[3].z+19, -720.0, 1.0); // 720 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[3].z-19, -720.0, 1.0); // 720 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[3].z+19, -720.0, 1.0); // 720 right-above
    EmitVertex();

    V_Color = vec4(0.0, 1.0, 0.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[3].y-18, -360.0, 1.0); // 360 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[3].y+18, -360.0, 1.0); // 360 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[3].y-18, -360.0, 1.0); // 360 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[3].y+18, -360.0, 1.0); // 360 left-above
    EmitVertex();

    V_Color = vec4(0.0, 1.0, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[3].x-17, -240.0, 1.0); // 240 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[3].x+17, -240.0, 1.0); // 240 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[3].x-17, -240.0, 1.0); // 240 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[3].x+17, -240.0, 1.0); // 240 right-above
    EmitVertex();

    V_Color = vec4(0.0, 0.0, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[2].w-16, -180.0, 1.0); // 180 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[2].w+16, -180.0, 1.0); // 180 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[2].w-16, -180.0, 1.0); // 180 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[2].w+16, -180.0, 1.0); // 180 left-above
    EmitVertex();

    V_Color = vec4(1.0, 0.0, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[2].z-15, -120.0, 1.0); // 120 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[2].z+15, -120.0, 1.0); // 120 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[2].z-15, -120.0, 1.0); // 120 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[2].z+15, -120.0, 1.0); // 120 right-above
    EmitVertex();

    V_Color = vec4(0.5, 1.0, 0.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[2].y-14, -60.0, 1.0); // 60 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[2].y+14, -60.0, 1.0); // 60 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[2].y-14, -60.0, 1.0); // 60 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[2].y+14, -60.0, 1.0); // 60 left-above
    EmitVertex();

    V_Color = vec4(1.0, 0.5, 0.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[2].x-13, -45.0, 1.0); // 45 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[2].x+13, -45.0, 1.0); // 45 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[2].x-13, -45.0, 1.0); // 45 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[2].x+13, -45.0, 1.0); // 45 right-above
    EmitVertex();

    V_Color = vec4(0.0, 1.0, 0.5, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[1].w-12, -30.0, 1.0); // 30 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[1].w+12, -30.0, 1.0); // 30 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[1].w-12, -30.0, 1.0); // 30 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[1].w+12, -30.0, 1.0); // 30 left-above
    EmitVertex();

    V_Color = vec4(0.0, 0.5, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[1].z-11, -15.0, 1.0); // 15 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[1].z+11, -15.0, 1.0); // 15 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[1].z-11, -15.0, 1.0); // 15 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[1].z+11, -15.0, 1.0); // 15 right-above
    EmitVertex();

    V_Color = vec4(0.5, 0.0, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[1].y-10, -10.0, 1.0); // 10 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[1].y+10, -10.0, 1.0); // 10 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[1].y-10, -10.0, 1.0); // 10 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[1].y+10, -10.0, 1.0); // 10 left-above
    EmitVertex();

    V_Color = vec4(1.0, 0.0, 0.5, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[1].x-9, -5.0, 1.0); // 5 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[1].x+9, -5.0, 1.0); // 5 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[1].x-9, -5.0, 1.0); // 5 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[1].x+9, -5.0, 1.0); // 5 right-above
    EmitVertex();

    V_Color = vec4(0.5, 0.5, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[0].w-8, -4.0, 1.0); // 4 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[0].w+8, -4.0, 1.0); // 4 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[0].w-8, -4.0, 1.0); // 4 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[0].w+8, -4.0, 1.0); // 4 left-above
    EmitVertex();

    V_Color = vec4(0.5, 1.0, 0.5, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[0].z-7, -3.0, 1.0); // 3 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[0].z+7, -3.0, 1.0); // 3 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[0].z-7, -3.0, 1.0); // 3 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[0].z+7, -3.0, 1.0); // 3 right-above
    EmitVertex();

    V_Color = vec4(1.0, 0.5, 0.5, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[0].y-6, -2.0, 1.0); // 2 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[0].y+6, -2.0, 1.0); // 2 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[0].y-6, -2.0, 1.0); // 2 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[0].y+6, -2.0, 1.0); // 2 left-above
    EmitVertex();

    V_Color = vec4(1.0, 1.0, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[0].x-5, -1.0, 1.0); // 1 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, 0 + 40*vertex_attri_[0].intensity_dual_last[0].x+5, -1.0, 1.0); // 1 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[0].x-5, -1.0, 1.0); // 1 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, 0 + 40*vertex_attri_[0].intensity_dual[0].x+5, -1.0, 1.0); // 1 right-above
    EmitVertex();


    V_Color = vec4(1.0, 0.0, 0.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[3].w-20, -1440.0, 1.0); // 1440 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[3].w+20, -1440.0, 1.0); // 1440 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[3].w-20, -1440.0, 1.0); // 1440 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[3].w+20, -1440.0, 1.0); // 1440 left-above
    EmitVertex();

    V_Color = vec4(1.0, 1.0, 0.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[3].z-19, -720.0, 1.0); // 720 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[3].z+19, -720.0, 1.0); // 720 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[3].z-19, -720.0, 1.0); // 720 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[3].z+19, -720.0, 1.0); // 720 right-above
    EmitVertex();

    V_Color = vec4(0.0, 1.0, 0.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[3].y-18, -360.0, 1.0); // 360 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[3].y+18, -360.0, 1.0); // 360 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[3].y-18, -360.0, 1.0); // 360 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[3].y+18, -360.0, 1.0); // 360 left-above
    EmitVertex();

    V_Color = vec4(0.0, 1.0, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[3].x-17, -240.0, 1.0); // 240 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[3].x+17, -240.0, 1.0); // 240 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[3].x-17, -240.0, 1.0); // 240 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[3].x+17, -240.0, 1.0); // 240 right-above
    EmitVertex();

    V_Color = vec4(0.0, 0.0, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[2].w-16, -180.0, 1.0); // 180 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[2].w+16, -180.0, 1.0); // 180 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[2].w-16, -180.0, 1.0); // 180 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[2].w+16, -180.0, 1.0); // 180 left-above
    EmitVertex();

    V_Color = vec4(1.0, 0.0, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[2].z-15, -120.0, 1.0); // 120 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[2].z+15, -120.0, 1.0); // 120 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[2].z-15, -120.0, 1.0); // 120 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[2].z+15, -120.0, 1.0); // 120 right-above
    EmitVertex();

    V_Color = vec4(0.5, 1.0, 0.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[2].y-14, -60.0, 1.0); // 60 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[2].y+14, -60.0, 1.0); // 60 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[2].y-14, -60.0, 1.0); // 60 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[2].y+14, -60.0, 1.0); // 60 left-above
    EmitVertex();

    V_Color = vec4(1.0, 0.5, 0.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[2].x-13, -45.0, 1.0); // 45 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[2].x+13, -45.0, 1.0); // 45 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[2].x-13, -45.0, 1.0); // 45 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[2].x+13, -45.0, 1.0); // 45 right-above
    EmitVertex();

    V_Color = vec4(0.0, 1.0, 0.5, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[1].w-12, -30.0, 1.0); // 30 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[1].w+12, -30.0, 1.0); // 30 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[1].w-12, -30.0, 1.0); // 30 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[1].w+12, -30.0, 1.0); // 30 left-above
    EmitVertex();

    V_Color = vec4(0.0, 0.5, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[1].z-11, -15.0, 1.0); // 15 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[1].z+11, -15.0, 1.0); // 15 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[1].z-11, -15.0, 1.0); // 15 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[1].z+11, -15.0, 1.0); // 15 right-above
    EmitVertex();

    V_Color = vec4(0.5, 0.0, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[1].y-10, -10.0, 1.0); // 10 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[1].y+10, -10.0, 1.0); // 10 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[1].y-10, -10.0, 1.0); // 10 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[1].y+10, -10.0, 1.0); // 10 left-above
    EmitVertex();

    V_Color = vec4(1.0, 0.0, 0.5, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[1].x-9, -5.0, 1.0); // 5 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[1].x+9, -5.0, 1.0); // 5 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[1].x-9, -5.0, 1.0); // 5 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[1].x+9, -5.0, 1.0); // 5 right-above
    EmitVertex();

    V_Color = vec4(0.5, 0.5, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[0].w-8, -4.0, 1.0); // 4 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[0].w+8, -4.0, 1.0); // 4 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[0].w-8, -4.0, 1.0); // 4 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[0].w+8, -4.0, 1.0); // 4 left-above
    EmitVertex();

    V_Color = vec4(0.5, 1.0, 0.5, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[0].z-7, -3.0, 1.0); // 3 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[0].z+7, -3.0, 1.0); // 3 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[0].z-7, -3.0, 1.0); // 3 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[0].z+7, -3.0, 1.0); // 3 right-above
    EmitVertex();

    V_Color = vec4(1.0, 0.5, 0.5, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[0].y-6, -2.0, 1.0); // 2 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[0].y+6, -2.0, 1.0); // 2 right-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[0].y-6, -2.0, 1.0); // 2 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[0].y+6, -2.0, 1.0); // 2 left-above
    EmitVertex();

    V_Color = vec4(1.0, 1.0, 1.0, 1.0);
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[0].x-5, -1.0, 1.0); // 1 left-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10-10, -300 + 40*vertex_attri_[0].intensity_last[0].x+5, -1.0, 1.0); // 1 left-above
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[0].x-5, -1.0, 1.0); // 1 right-below
    EmitVertex();
    gl_Position = projection*scaling*translation*vec4(vertex_attri_[0].index*10, -300 + 40*vertex_attri_[0].intensity[0].x+5, -1.0, 1.0); // 1 right-above
    EmitVertex();

    EndPrimitive();
}

void main(){
    build_ribbon();
}