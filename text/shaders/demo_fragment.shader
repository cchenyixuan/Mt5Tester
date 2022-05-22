# version 460 core
in vec4 V_Color;
out vec4 color;

void main()
{
    /*
    if(V_Color.x < 640 && V_Color.y > -360){
        color = vec4(0.2, 0.2, 0.2, 1.0);
    }
    else if(V_Color.x < 640 && V_Color.y < -360){
        color = vec4(0.3, 0.9, 0.9, 1.0);
    }
    else if(V_Color.x > 640 && V_Color.y > -180){
        color = vec4(0.9, 0.9, 0.9, 1.0);
    }
    else if(V_Color.x > 640 && V_Color.y < -180){
        color = vec4(0.9, 0.1, 0.9, 1.0);
    }
    if(length(vec2(V_Color.x, V_Color.y))<10){
        color = vec4(0.9, 0.1, 0.5, 1.0);
    }
    */
    color = V_Color;
}
