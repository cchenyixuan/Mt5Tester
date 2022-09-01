# version 460 core
layout(location=0) in int Candle_id;

layout(std430, binding=1) buffer Data{
    vec4 AUDCAD_candle_1[100000];
    vec4 AUDCAD_candle_2[50000];
    vec4 AUDCAD_candle_3[33334];
    vec4 AUDCAD_candle_4[25000];
    vec4 AUDCAD_candle_5[20000];
    vec4 AUDCAD_candle_10[10000];
    vec4 AUDCAD_candle_15[6667];
    vec4 AUDCAD_candle_30[3334];
    vec4 AUDCAD_candle_45[2223];
    vec4 AUDCAD_candle_60[1667];
    vec4 AUDCAD_candle_120[834];
    vec4 AUDCAD_candle_180[556];
    vec4 AUDCAD_candle_240[417];
    vec4 AUDCAD_candle_360[278];
    vec4 AUDCAD_candle_720[139];
    vec4 AUDCAD_candle_1440[70];

    vec4 AUDCHF_candle_1[100000];
    vec4 AUDCHF_candle_2[50000];
    vec4 AUDCHF_candle_3[33334];
    vec4 AUDCHF_candle_4[25000];
    vec4 AUDCHF_candle_5[20000];
    vec4 AUDCHF_candle_10[10000];
    vec4 AUDCHF_candle_15[6667];
    vec4 AUDCHF_candle_30[3334];
    vec4 AUDCHF_candle_45[2223];
    vec4 AUDCHF_candle_60[1667];
    vec4 AUDCHF_candle_120[834];
    vec4 AUDCHF_candle_180[556];
    vec4 AUDCHF_candle_240[417];
    vec4 AUDCHF_candle_360[278];
    vec4 AUDCHF_candle_720[139];
    vec4 AUDCHF_candle_1440[70];

    vec4 AUDJPY_candle_1[100000];
    vec4 AUDJPY_candle_2[50000];
    vec4 AUDJPY_candle_3[33334];
    vec4 AUDJPY_candle_4[25000];
    vec4 AUDJPY_candle_5[20000];
    vec4 AUDJPY_candle_10[10000];
    vec4 AUDJPY_candle_15[6667];
    vec4 AUDJPY_candle_30[3334];
    vec4 AUDJPY_candle_45[2223];
    vec4 AUDJPY_candle_60[1667];
    vec4 AUDJPY_candle_120[834];
    vec4 AUDJPY_candle_180[556];
    vec4 AUDJPY_candle_240[417];
    vec4 AUDJPY_candle_360[278];
    vec4 AUDJPY_candle_720[139];
    vec4 AUDJPY_candle_1440[70];

    vec4 AUDUSD_candle_1[100000];
    vec4 AUDUSD_candle_2[50000];
    vec4 AUDUSD_candle_3[33334];
    vec4 AUDUSD_candle_4[25000];
    vec4 AUDUSD_candle_5[20000];
    vec4 AUDUSD_candle_10[10000];
    vec4 AUDUSD_candle_15[6667];
    vec4 AUDUSD_candle_30[3334];
    vec4 AUDUSD_candle_45[2223];
    vec4 AUDUSD_candle_60[1667];
    vec4 AUDUSD_candle_120[834];
    vec4 AUDUSD_candle_180[556];
    vec4 AUDUSD_candle_240[417];
    vec4 AUDUSD_candle_360[278];
    vec4 AUDUSD_candle_720[139];
    vec4 AUDUSD_candle_1440[70];

    vec4 CADCHF_candle_1[100000];
    vec4 CADCHF_candle_2[50000];
    vec4 CADCHF_candle_3[33334];
    vec4 CADCHF_candle_4[25000];
    vec4 CADCHF_candle_5[20000];
    vec4 CADCHF_candle_10[10000];
    vec4 CADCHF_candle_15[6667];
    vec4 CADCHF_candle_30[3334];
    vec4 CADCHF_candle_45[2223];
    vec4 CADCHF_candle_60[1667];
    vec4 CADCHF_candle_120[834];
    vec4 CADCHF_candle_180[556];
    vec4 CADCHF_candle_240[417];
    vec4 CADCHF_candle_360[278];
    vec4 CADCHF_candle_720[139];
    vec4 CADCHF_candle_1440[70];

    vec4 CADJPY_candle_1[100000];
    vec4 CADJPY_candle_2[50000];
    vec4 CADJPY_candle_3[33334];
    vec4 CADJPY_candle_4[25000];
    vec4 CADJPY_candle_5[20000];
    vec4 CADJPY_candle_10[10000];
    vec4 CADJPY_candle_15[6667];
    vec4 CADJPY_candle_30[3334];
    vec4 CADJPY_candle_45[2223];
    vec4 CADJPY_candle_60[1667];
    vec4 CADJPY_candle_120[834];
    vec4 CADJPY_candle_180[556];
    vec4 CADJPY_candle_240[417];
    vec4 CADJPY_candle_360[278];
    vec4 CADJPY_candle_720[139];
    vec4 CADJPY_candle_1440[70];

    vec4 CHFJPY_candle_1[100000];
    vec4 CHFJPY_candle_2[50000];
    vec4 CHFJPY_candle_3[33334];
    vec4 CHFJPY_candle_4[25000];
    vec4 CHFJPY_candle_5[20000];
    vec4 CHFJPY_candle_10[10000];
    vec4 CHFJPY_candle_15[6667];
    vec4 CHFJPY_candle_30[3334];
    vec4 CHFJPY_candle_45[2223];
    vec4 CHFJPY_candle_60[1667];
    vec4 CHFJPY_candle_120[834];
    vec4 CHFJPY_candle_180[556];
    vec4 CHFJPY_candle_240[417];
    vec4 CHFJPY_candle_360[278];
    vec4 CHFJPY_candle_720[139];
    vec4 CHFJPY_candle_1440[70];

    vec4 EURAUD_candle_1[100000];
    vec4 EURAUD_candle_2[50000];
    vec4 EURAUD_candle_3[33334];
    vec4 EURAUD_candle_4[25000];
    vec4 EURAUD_candle_5[20000];
    vec4 EURAUD_candle_10[10000];
    vec4 EURAUD_candle_15[6667];
    vec4 EURAUD_candle_30[3334];
    vec4 EURAUD_candle_45[2223];
    vec4 EURAUD_candle_60[1667];
    vec4 EURAUD_candle_120[834];
    vec4 EURAUD_candle_180[556];
    vec4 EURAUD_candle_240[417];
    vec4 EURAUD_candle_360[278];
    vec4 EURAUD_candle_720[139];
    vec4 EURAUD_candle_1440[70];

    vec4 EURCAD_candle_1[100000];
    vec4 EURCAD_candle_2[50000];
    vec4 EURCAD_candle_3[33334];
    vec4 EURCAD_candle_4[25000];
    vec4 EURCAD_candle_5[20000];
    vec4 EURCAD_candle_10[10000];
    vec4 EURCAD_candle_15[6667];
    vec4 EURCAD_candle_30[3334];
    vec4 EURCAD_candle_45[2223];
    vec4 EURCAD_candle_60[1667];
    vec4 EURCAD_candle_120[834];
    vec4 EURCAD_candle_180[556];
    vec4 EURCAD_candle_240[417];
    vec4 EURCAD_candle_360[278];
    vec4 EURCAD_candle_720[139];
    vec4 EURCAD_candle_1440[70];

    vec4 EURCHF_candle_1[100000];
    vec4 EURCHF_candle_2[50000];
    vec4 EURCHF_candle_3[33334];
    vec4 EURCHF_candle_4[25000];
    vec4 EURCHF_candle_5[20000];
    vec4 EURCHF_candle_10[10000];
    vec4 EURCHF_candle_15[6667];
    vec4 EURCHF_candle_30[3334];
    vec4 EURCHF_candle_45[2223];
    vec4 EURCHF_candle_60[1667];
    vec4 EURCHF_candle_120[834];
    vec4 EURCHF_candle_180[556];
    vec4 EURCHF_candle_240[417];
    vec4 EURCHF_candle_360[278];
    vec4 EURCHF_candle_720[139];
    vec4 EURCHF_candle_1440[70];

    vec4 EURGBP_candle_1[100000];
    vec4 EURGBP_candle_2[50000];
    vec4 EURGBP_candle_3[33334];
    vec4 EURGBP_candle_4[25000];
    vec4 EURGBP_candle_5[20000];
    vec4 EURGBP_candle_10[10000];
    vec4 EURGBP_candle_15[6667];
    vec4 EURGBP_candle_30[3334];
    vec4 EURGBP_candle_45[2223];
    vec4 EURGBP_candle_60[1667];
    vec4 EURGBP_candle_120[834];
    vec4 EURGBP_candle_180[556];
    vec4 EURGBP_candle_240[417];
    vec4 EURGBP_candle_360[278];
    vec4 EURGBP_candle_720[139];
    vec4 EURGBP_candle_1440[70];

    vec4 EURJPY_candle_1[100000];
    vec4 EURJPY_candle_2[50000];
    vec4 EURJPY_candle_3[33334];
    vec4 EURJPY_candle_4[25000];
    vec4 EURJPY_candle_5[20000];
    vec4 EURJPY_candle_10[10000];
    vec4 EURJPY_candle_15[6667];
    vec4 EURJPY_candle_30[3334];
    vec4 EURJPY_candle_45[2223];
    vec4 EURJPY_candle_60[1667];
    vec4 EURJPY_candle_120[834];
    vec4 EURJPY_candle_180[556];
    vec4 EURJPY_candle_240[417];
    vec4 EURJPY_candle_360[278];
    vec4 EURJPY_candle_720[139];
    vec4 EURJPY_candle_1440[70];

    vec4 EURUSD_candle_1[100000];
    vec4 EURUSD_candle_2[50000];
    vec4 EURUSD_candle_3[33334];
    vec4 EURUSD_candle_4[25000];
    vec4 EURUSD_candle_5[20000];
    vec4 EURUSD_candle_10[10000];
    vec4 EURUSD_candle_15[6667];
    vec4 EURUSD_candle_30[3334];
    vec4 EURUSD_candle_45[2223];
    vec4 EURUSD_candle_60[1667];
    vec4 EURUSD_candle_120[834];
    vec4 EURUSD_candle_180[556];
    vec4 EURUSD_candle_240[417];
    vec4 EURUSD_candle_360[278];
    vec4 EURUSD_candle_720[139];
    vec4 EURUSD_candle_1440[70];

    vec4 GBPAUD_candle_1[100000];
    vec4 GBPAUD_candle_2[50000];
    vec4 GBPAUD_candle_3[33334];
    vec4 GBPAUD_candle_4[25000];
    vec4 GBPAUD_candle_5[20000];
    vec4 GBPAUD_candle_10[10000];
    vec4 GBPAUD_candle_15[6667];
    vec4 GBPAUD_candle_30[3334];
    vec4 GBPAUD_candle_45[2223];
    vec4 GBPAUD_candle_60[1667];
    vec4 GBPAUD_candle_120[834];
    vec4 GBPAUD_candle_180[556];
    vec4 GBPAUD_candle_240[417];
    vec4 GBPAUD_candle_360[278];
    vec4 GBPAUD_candle_720[139];
    vec4 GBPAUD_candle_1440[70];

    vec4 GBPCAD_candle_1[100000];
    vec4 GBPCAD_candle_2[50000];
    vec4 GBPCAD_candle_3[33334];
    vec4 GBPCAD_candle_4[25000];
    vec4 GBPCAD_candle_5[20000];
    vec4 GBPCAD_candle_10[10000];
    vec4 GBPCAD_candle_15[6667];
    vec4 GBPCAD_candle_30[3334];
    vec4 GBPCAD_candle_45[2223];
    vec4 GBPCAD_candle_60[1667];
    vec4 GBPCAD_candle_120[834];
    vec4 GBPCAD_candle_180[556];
    vec4 GBPCAD_candle_240[417];
    vec4 GBPCAD_candle_360[278];
    vec4 GBPCAD_candle_720[139];
    vec4 GBPCAD_candle_1440[70];

    vec4 GBPCHF_candle_1[100000];
    vec4 GBPCHF_candle_2[50000];
    vec4 GBPCHF_candle_3[33334];
    vec4 GBPCHF_candle_4[25000];
    vec4 GBPCHF_candle_5[20000];
    vec4 GBPCHF_candle_10[10000];
    vec4 GBPCHF_candle_15[6667];
    vec4 GBPCHF_candle_30[3334];
    vec4 GBPCHF_candle_45[2223];
    vec4 GBPCHF_candle_60[1667];
    vec4 GBPCHF_candle_120[834];
    vec4 GBPCHF_candle_180[556];
    vec4 GBPCHF_candle_240[417];
    vec4 GBPCHF_candle_360[278];
    vec4 GBPCHF_candle_720[139];
    vec4 GBPCHF_candle_1440[70];

    vec4 GBPJPY_candle_1[100000];
    vec4 GBPJPY_candle_2[50000];
    vec4 GBPJPY_candle_3[33334];
    vec4 GBPJPY_candle_4[25000];
    vec4 GBPJPY_candle_5[20000];
    vec4 GBPJPY_candle_10[10000];
    vec4 GBPJPY_candle_15[6667];
    vec4 GBPJPY_candle_30[3334];
    vec4 GBPJPY_candle_45[2223];
    vec4 GBPJPY_candle_60[1667];
    vec4 GBPJPY_candle_120[834];
    vec4 GBPJPY_candle_180[556];
    vec4 GBPJPY_candle_240[417];
    vec4 GBPJPY_candle_360[278];
    vec4 GBPJPY_candle_720[139];
    vec4 GBPJPY_candle_1440[70];

    vec4 GBPUSD_candle_1[100000];
    vec4 GBPUSD_candle_2[50000];
    vec4 GBPUSD_candle_3[33334];
    vec4 GBPUSD_candle_4[25000];
    vec4 GBPUSD_candle_5[20000];
    vec4 GBPUSD_candle_10[10000];
    vec4 GBPUSD_candle_15[6667];
    vec4 GBPUSD_candle_30[3334];
    vec4 GBPUSD_candle_45[2223];
    vec4 GBPUSD_candle_60[1667];
    vec4 GBPUSD_candle_120[834];
    vec4 GBPUSD_candle_180[556];
    vec4 GBPUSD_candle_240[417];
    vec4 GBPUSD_candle_360[278];
    vec4 GBPUSD_candle_720[139];
    vec4 GBPUSD_candle_1440[70];

    vec4 USDCAD_candle_1[100000];
    vec4 USDCAD_candle_2[50000];
    vec4 USDCAD_candle_3[33334];
    vec4 USDCAD_candle_4[25000];
    vec4 USDCAD_candle_5[20000];
    vec4 USDCAD_candle_10[10000];
    vec4 USDCAD_candle_15[6667];
    vec4 USDCAD_candle_30[3334];
    vec4 USDCAD_candle_45[2223];
    vec4 USDCAD_candle_60[1667];
    vec4 USDCAD_candle_120[834];
    vec4 USDCAD_candle_180[556];
    vec4 USDCAD_candle_240[417];
    vec4 USDCAD_candle_360[278];
    vec4 USDCAD_candle_720[139];
    vec4 USDCAD_candle_1440[70];

    vec4 USDCHF_candle_1[100000];
    vec4 USDCHF_candle_2[50000];
    vec4 USDCHF_candle_3[33334];
    vec4 USDCHF_candle_4[25000];
    vec4 USDCHF_candle_5[20000];
    vec4 USDCHF_candle_10[10000];
    vec4 USDCHF_candle_15[6667];
    vec4 USDCHF_candle_30[3334];
    vec4 USDCHF_candle_45[2223];
    vec4 USDCHF_candle_60[1667];
    vec4 USDCHF_candle_120[834];
    vec4 USDCHF_candle_180[556];
    vec4 USDCHF_candle_240[417];
    vec4 USDCHF_candle_360[278];
    vec4 USDCHF_candle_720[139];
    vec4 USDCHF_candle_1440[70];

    vec4 USDJPY_candle_1[100000];
    vec4 USDJPY_candle_2[50000];
    vec4 USDJPY_candle_3[33334];
    vec4 USDJPY_candle_4[25000];
    vec4 USDJPY_candle_5[20000];
    vec4 USDJPY_candle_10[10000];
    vec4 USDJPY_candle_15[6667];
    vec4 USDJPY_candle_30[3334];
    vec4 USDJPY_candle_45[2223];
    vec4 USDJPY_candle_60[1667];
    vec4 USDJPY_candle_120[834];
    vec4 USDJPY_candle_180[556];
    vec4 USDJPY_candle_240[417];
    vec4 USDJPY_candle_360[278];
    vec4 USDJPY_candle_720[139];
    vec4 USDJPY_candle_1440[70];

};
layout(std140, binding=3) buffer SimpleMovingAverage{
    // mat4x4(1min, 2min, 3min, 4min, ..., 1440min);
    // 100000 > 86400 = 60*1440; we assume our data is less than 60 days
    mat4x4 AUDCAD[100000];
    mat4x4 AUDCHF[100000];
    mat4x4 AUDJPY[100000];
    mat4x4 AUDUSD[100000];
    mat4x4 CADCHF[100000];
    mat4x4 CADJPY[100000];
    mat4x4 CHFJPY[100000];
    mat4x4 EURAUD[100000];
    mat4x4 EURCAD[100000];
    mat4x4 EURCHF[100000];
    mat4x4 EURGBP[100000];
    mat4x4 EURJPY[100000];
    mat4x4 EURUSD[100000];
    mat4x4 GBPAUD[100000];
    mat4x4 GBPCAD[100000];
    mat4x4 GBPCHF[100000];
    mat4x4 GBPJPY[100000];
    mat4x4 GBPUSD[100000];
    mat4x4 USDCAD[100000];
    mat4x4 USDCHF[100000];
    mat4x4 USDJPY[100000];
};

out vec4 V_Color;

uniform mat4 projection;
uniform mat4 scaling;
uniform mat4 translation;
uniform int offset;
uniform int coin_pair_id;
uniform int time_length;
void main(){
    switch (coin_pair_id){
        case 0:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCAD[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 1:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDCHF[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 2:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDJPY[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 3:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, AUDUSD[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 4:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADCHF[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 5:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CADJPY[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 6:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, CHFJPY[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 7:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURAUD[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 8:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCAD[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 9:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURCHF[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 10:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURGBP[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 11:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURJPY[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 12:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, EURUSD[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 13:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPAUD[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 14:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCAD[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 15:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPCHF[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 16:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPJPY[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 17:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, GBPUSD[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 18:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCAD[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 19:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDCHF[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
        case 20:
        switch (time_length){
            case 1:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][0].x, 1.0, 1.0);
            break;
            case 2:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][0].y, 2.0, 1.0);
            break;
            case 3:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][0].z, 3.0, 1.0);
            break;
            case 4:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][0].w, 4.0, 1.0);
            break;
            case 5:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][1].x, 5.0, 1.0);
            break;
            case 10:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][1].y, 10.0, 1.0);
            break;
            case 15:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][1].z, 15.0, 1.0);
            break;
            case 30:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][1].w, 30.0, 1.0);
            break;
            case 45:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][2].x, 45.0, 1.0);
            break;
            case 60:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][2].y, 60.0, 1.0);
            break;
            case 120:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][2].z, 120.0, 1.0);
            break;
            case 180:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][2].w, 180.0, 1.0);
            break;
            case 240:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][3].x, 240.0, 1.0);
            break;
            case 360:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][3].y, 360.0, 1.0);
            break;
            case 720:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][3].z, 720.0, 1.0);
            break;
            case 1440:
            gl_Position = projection*scaling*translation*vec4(Candle_id*10, USDJPY[offset+Candle_id][3].w, 1440.0, 1.0);
            break;
        }
        break;
    }
    switch (time_length){
        case 1:
        V_Color = vec4(0.992157, 0.501961, 0.658824, 1.0);
        break;
        case 2:
        V_Color = vec4(0.991895, 0.522353, 0.632157, 1.0);
        break;
        case 3:
        V_Color = vec4(0.991634, 0.542745, 0.605490, 1.0);
        break;
        case 4:
        V_Color = vec4(0.991373, 0.563137, 0.578824, 1.0);
        break;
        case 5:
        V_Color = vec4(0.991111, 0.583529, 0.552157, 1.0);
        break;
        case 10:
        V_Color = vec4(0.990850, 0.603922, 0.525490, 1.0);
        break;
        case 15:
        V_Color = vec4(0.990588, 0.624314, 0.498824, 1.0);
        break;
        case 30:
        V_Color = vec4(0.990327, 0.644706, 0.472157, 1.0);
        break;
        case 45:
        V_Color = vec4(0.990065, 0.665098, 0.445490, 1.0);
        break;
        case 60:
        V_Color = vec4(0.989804, 0.685490, 0.418824, 1.0);
        break;
        case 120:
        V_Color = vec4(0.989542, 0.705882, 0.392157, 1.0);
        break;
        case 180:
        V_Color = vec4(0.989281, 0.726275, 0.365490, 1.0);
        break;
        case 240:
        V_Color = vec4(0.989020, 0.746667, 0.338824, 1.0);
        break;
        case 360:
        V_Color = vec4(0.988758, 0.767059, 0.312157, 1.0);
        break;
        case 720:
        V_Color = vec4(0.988497, 0.787451, 0.285490, 1.0);
        break;
        case 1440:
        V_Color = vec4(0.988235, 0.807843, 0.258824, 1.0);
        break;
    }

    

}