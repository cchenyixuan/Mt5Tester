#version 460 compatibility
/*
This shader reveals currency strength,
o
*/

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
layout(std140, binding=2) buffer Intensity{
    // vec4(1min-strength, 5min-strength, 15min-strength, 60min-strength);
    // 100000 > 86400 = 60*1440; we assume our data is less than 60 days
    mat4x4 USD[100000];
    mat4x4 AUD[100000];
    mat4x4 JPY[100000];
    mat4x4 CHF[100000];
    mat4x4 GBP[100000];
    mat4x4 EUR[100000];
    mat4x4 CAD[100000];
};
layout(local_size_x=1, local_size_y=1, local_size_z=1) in;

uint gid = gl_GlobalInvocationID.x;
int index = int(gid);


void Strength(int start, int period){
    if (start - period < 0){
        period = start;
    }
    // AUDCAD
    if (AUDCAD_candle_1[(start+1)/1-1].w > AUDCAD_candle_1[(start+1)/1-1-period].w){
        AUD[start][0].x += 1;
    }
    else if (AUDCAD_candle_1[(start+1)/1-1].w < AUDCAD_candle_1[(start+1)/1-1-period].w){
        CAD[start][0].x += 1;
    }
    if (AUDCAD_candle_2[(start+1)/2-1].w > AUDCAD_candle_2[(start+1)/2-1-period].w){
        AUD[start][0].y += 1;
    }
    else if (AUDCAD_candle_2[(start+1)/2-1].w < AUDCAD_candle_2[(start+1)/2-1-period].w){
        CAD[start][0].y += 1;
    }
    if (AUDCAD_candle_3[(start+1)/3-1].w > AUDCAD_candle_3[(start+1)/3-1-period].w){
        AUD[start][0].z += 1;
    }
    else if (AUDCAD_candle_3[(start+1)/3-1].w < AUDCAD_candle_3[(start+1)/3-1-period].w){
        CAD[start][0].z += 1;
    }
    if (AUDCAD_candle_4[(start+1)/4-1].w > AUDCAD_candle_4[(start+1)/4-1-period].w){
        AUD[start][0].w += 1;
    }
    else if (AUDCAD_candle_4[(start+1)/4-1].w < AUDCAD_candle_4[(start+1)/4-1-period].w){
        CAD[start][0].w += 1;
    }
    if (AUDCAD_candle_5[(start+1)/5-1].w > AUDCAD_candle_5[(start+1)/5-1-period].w){
        AUD[start][1].x += 1;
    }
    else if (AUDCAD_candle_5[(start+1)/5-1].w < AUDCAD_candle_5[(start+1)/5-1-period].w){
        CAD[start][1].x += 1;
    }
    if (AUDCAD_candle_10[(start+1)/10-1].w > AUDCAD_candle_10[(start+1)/10-1-period].w){
        AUD[start][1].y += 1;
    }
    else if (AUDCAD_candle_10[(start+1)/10-1].w < AUDCAD_candle_10[(start+1)/10-1-period].w){
        CAD[start][1].y += 1;
    }
    if (AUDCAD_candle_15[(start+1)/15-1].w > AUDCAD_candle_15[(start+1)/15-1-period].w){
        AUD[start][1].z += 1;
    }
    else if (AUDCAD_candle_15[(start+1)/15-1].w < AUDCAD_candle_15[(start+1)/15-1-period].w){
        CAD[start][1].z += 1;
    }
    if (AUDCAD_candle_30[(start+1)/30-1].w > AUDCAD_candle_30[(start+1)/30-1-period].w){
        AUD[start][1].w += 1;
    }
    else if (AUDCAD_candle_30[(start+1)/30-1].w < AUDCAD_candle_30[(start+1)/30-1-period].w){
        CAD[start][1].w += 1;
    }
    if (AUDCAD_candle_45[(start+1)/45-1].w > AUDCAD_candle_45[(start+1)/45-1-period].w){
        AUD[start][2].x += 1;
    }
    else if (AUDCAD_candle_45[(start+1)/45-1].w < AUDCAD_candle_45[(start+1)/45-1-period].w){
        CAD[start][2].x += 1;
    }
    if (AUDCAD_candle_60[(start+1)/60-1].w > AUDCAD_candle_60[(start+1)/60-1-period].w){
        AUD[start][2].y += 1;
    }
    else if (AUDCAD_candle_60[(start+1)/60-1].w < AUDCAD_candle_60[(start+1)/60-1-period].w){
        CAD[start][2].y += 1;
    }
    if (AUDCAD_candle_120[(start+1)/120-1].w > AUDCAD_candle_120[(start+1)/120-1-period].w){
        AUD[start][2].z += 1;
    }
    else if (AUDCAD_candle_120[(start+1)/120-1].w < AUDCAD_candle_120[(start+1)/120-1-period].w){
        CAD[start][2].z += 1;
    }
    if (AUDCAD_candle_180[(start+1)/180-1].w > AUDCAD_candle_180[(start+1)/180-1-period].w){
        AUD[start][2].w += 1;
    }
    else if (AUDCAD_candle_180[(start+1)/180-1].w < AUDCAD_candle_180[(start+1)/180-1-period].w){
        CAD[start][2].w += 1;
    }
    if (AUDCAD_candle_240[(start+1)/240-1].w > AUDCAD_candle_240[(start+1)/240-1-period].w){
        AUD[start][3].x += 1;
    }
    else if (AUDCAD_candle_240[(start+1)/240-1].w < AUDCAD_candle_240[(start+1)/240-1-period].w){
        CAD[start][3].x += 1;
    }
    if (AUDCAD_candle_360[(start+1)/360-1].w > AUDCAD_candle_360[(start+1)/360-1-period].w){
        AUD[start][3].y += 1;
    }
    else if (AUDCAD_candle_360[(start+1)/360-1].w < AUDCAD_candle_360[(start+1)/360-1-period].w){
        CAD[start][3].y += 1;
    }
    if (AUDCAD_candle_720[(start+1)/720-1].w > AUDCAD_candle_720[(start+1)/720-1-period].w){
        AUD[start][3].z += 1;
    }
    else if (AUDCAD_candle_720[(start+1)/720-1].w < AUDCAD_candle_720[(start+1)/720-1-period].w){
        CAD[start][3].z += 1;
    }
    if (AUDCAD_candle_1440[(start+1)/1440-1].w > AUDCAD_candle_1440[(start+1)/1440-1-period].w){
        AUD[start][3].w += 1;
    }
    else if (AUDCAD_candle_1440[(start+1)/1440-1].w < AUDCAD_candle_1440[(start+1)/1440-1-period].w){
        CAD[start][3].w += 1;
    }
    // AUDCHF
    if (AUDCHF_candle_1[(start+1)/1-1].w > AUDCHF_candle_1[(start+1)/1-1-period].w){
        AUD[start][0].x += 1;
    }
    else if (AUDCHF_candle_1[(start+1)/1-1].w < AUDCHF_candle_1[(start+1)/1-1-period].w){
        CHF[start][0].x += 1;
    }
    if (AUDCHF_candle_2[(start+1)/2-1].w > AUDCHF_candle_2[(start+1)/2-1-period].w){
        AUD[start][0].y += 1;
    }
    else if (AUDCHF_candle_2[(start+1)/2-1].w < AUDCHF_candle_2[(start+1)/2-1-period].w){
        CHF[start][0].y += 1;
    }
    if (AUDCHF_candle_3[(start+1)/3-1].w > AUDCHF_candle_3[(start+1)/3-1-period].w){
        AUD[start][0].z += 1;
    }
    else if (AUDCHF_candle_3[(start+1)/3-1].w < AUDCHF_candle_3[(start+1)/3-1-period].w){
        CHF[start][0].z += 1;
    }
    if (AUDCHF_candle_4[(start+1)/4-1].w > AUDCHF_candle_4[(start+1)/4-1-period].w){
        AUD[start][0].w += 1;
    }
    else if (AUDCHF_candle_4[(start+1)/4-1].w < AUDCHF_candle_4[(start+1)/4-1-period].w){
        CHF[start][0].w += 1;
    }
    if (AUDCHF_candle_5[(start+1)/5-1].w > AUDCHF_candle_5[(start+1)/5-1-period].w){
        AUD[start][1].x += 1;
    }
    else if (AUDCHF_candle_5[(start+1)/5-1].w < AUDCHF_candle_5[(start+1)/5-1-period].w){
        CHF[start][1].x += 1;
    }
    if (AUDCHF_candle_10[(start+1)/10-1].w > AUDCHF_candle_10[(start+1)/10-1-period].w){
        AUD[start][1].y += 1;
    }
    else if (AUDCHF_candle_10[(start+1)/10-1].w < AUDCHF_candle_10[(start+1)/10-1-period].w){
        CHF[start][1].y += 1;
    }
    if (AUDCHF_candle_15[(start+1)/15-1].w > AUDCHF_candle_15[(start+1)/15-1-period].w){
        AUD[start][1].z += 1;
    }
    else if (AUDCHF_candle_15[(start+1)/15-1].w < AUDCHF_candle_15[(start+1)/15-1-period].w){
        CHF[start][1].z += 1;
    }
    if (AUDCHF_candle_30[(start+1)/30-1].w > AUDCHF_candle_30[(start+1)/30-1-period].w){
        AUD[start][1].w += 1;
    }
    else if (AUDCHF_candle_30[(start+1)/30-1].w < AUDCHF_candle_30[(start+1)/30-1-period].w){
        CHF[start][1].w += 1;
    }
    if (AUDCHF_candle_45[(start+1)/45-1].w > AUDCHF_candle_45[(start+1)/45-1-period].w){
        AUD[start][2].x += 1;
    }
    else if (AUDCHF_candle_45[(start+1)/45-1].w < AUDCHF_candle_45[(start+1)/45-1-period].w){
        CHF[start][2].x += 1;
    }
    if (AUDCHF_candle_60[(start+1)/60-1].w > AUDCHF_candle_60[(start+1)/60-1-period].w){
        AUD[start][2].y += 1;
    }
    else if (AUDCHF_candle_60[(start+1)/60-1].w < AUDCHF_candle_60[(start+1)/60-1-period].w){
        CHF[start][2].y += 1;
    }
    if (AUDCHF_candle_120[(start+1)/120-1].w > AUDCHF_candle_120[(start+1)/120-1-period].w){
        AUD[start][2].z += 1;
    }
    else if (AUDCHF_candle_120[(start+1)/120-1].w < AUDCHF_candle_120[(start+1)/120-1-period].w){
        CHF[start][2].z += 1;
    }
    if (AUDCHF_candle_180[(start+1)/180-1].w > AUDCHF_candle_180[(start+1)/180-1-period].w){
        AUD[start][2].w += 1;
    }
    else if (AUDCHF_candle_180[(start+1)/180-1].w < AUDCHF_candle_180[(start+1)/180-1-period].w){
        CHF[start][2].w += 1;
    }
    if (AUDCHF_candle_240[(start+1)/240-1].w > AUDCHF_candle_240[(start+1)/240-1-period].w){
        AUD[start][3].x += 1;
    }
    else if (AUDCHF_candle_240[(start+1)/240-1].w < AUDCHF_candle_240[(start+1)/240-1-period].w){
        CHF[start][3].x += 1;
    }
    if (AUDCHF_candle_360[(start+1)/360-1].w > AUDCHF_candle_360[(start+1)/360-1-period].w){
        AUD[start][3].y += 1;
    }
    else if (AUDCHF_candle_360[(start+1)/360-1].w < AUDCHF_candle_360[(start+1)/360-1-period].w){
        CHF[start][3].y += 1;
    }
    if (AUDCHF_candle_720[(start+1)/720-1].w > AUDCHF_candle_720[(start+1)/720-1-period].w){
        AUD[start][3].z += 1;
    }
    else if (AUDCHF_candle_720[(start+1)/720-1].w < AUDCHF_candle_720[(start+1)/720-1-period].w){
        CHF[start][3].z += 1;
    }
    if (AUDCHF_candle_1440[(start+1)/1440-1].w > AUDCHF_candle_1440[(start+1)/1440-1-period].w){
        AUD[start][3].w += 1;
    }
    else if (AUDCHF_candle_1440[(start+1)/1440-1].w < AUDCHF_candle_1440[(start+1)/1440-1-period].w){
        CHF[start][3].w += 1;
    }
    // AUDJPY
    if (AUDJPY_candle_1[(start+1)/1-1].w > AUDJPY_candle_1[(start+1)/1-1-period].w){
        AUD[start][0].x += 1;
    }
    else if (AUDJPY_candle_1[(start+1)/1-1].w < AUDJPY_candle_1[(start+1)/1-1-period].w){
        JPY[start][0].x += 1;
    }
    if (AUDJPY_candle_2[(start+1)/2-1].w > AUDJPY_candle_2[(start+1)/2-1-period].w){
        AUD[start][0].y += 1;
    }
    else if (AUDJPY_candle_2[(start+1)/2-1].w < AUDJPY_candle_2[(start+1)/2-1-period].w){
        JPY[start][0].y += 1;
    }
    if (AUDJPY_candle_3[(start+1)/3-1].w > AUDJPY_candle_3[(start+1)/3-1-period].w){
        AUD[start][0].z += 1;
    }
    else if (AUDJPY_candle_3[(start+1)/3-1].w < AUDJPY_candle_3[(start+1)/3-1-period].w){
        JPY[start][0].z += 1;
    }
    if (AUDJPY_candle_4[(start+1)/4-1].w > AUDJPY_candle_4[(start+1)/4-1-period].w){
        AUD[start][0].w += 1;
    }
    else if (AUDJPY_candle_4[(start+1)/4-1].w < AUDJPY_candle_4[(start+1)/4-1-period].w){
        JPY[start][0].w += 1;
    }
    if (AUDJPY_candle_5[(start+1)/5-1].w > AUDJPY_candle_5[(start+1)/5-1-period].w){
        AUD[start][1].x += 1;
    }
    else if (AUDJPY_candle_5[(start+1)/5-1].w < AUDJPY_candle_5[(start+1)/5-1-period].w){
        JPY[start][1].x += 1;
    }
    if (AUDJPY_candle_10[(start+1)/10-1].w > AUDJPY_candle_10[(start+1)/10-1-period].w){
        AUD[start][1].y += 1;
    }
    else if (AUDJPY_candle_10[(start+1)/10-1].w < AUDJPY_candle_10[(start+1)/10-1-period].w){
        JPY[start][1].y += 1;
    }
    if (AUDJPY_candle_15[(start+1)/15-1].w > AUDJPY_candle_15[(start+1)/15-1-period].w){
        AUD[start][1].z += 1;
    }
    else if (AUDJPY_candle_15[(start+1)/15-1].w < AUDJPY_candle_15[(start+1)/15-1-period].w){
        JPY[start][1].z += 1;
    }
    if (AUDJPY_candle_30[(start+1)/30-1].w > AUDJPY_candle_30[(start+1)/30-1-period].w){
        AUD[start][1].w += 1;
    }
    else if (AUDJPY_candle_30[(start+1)/30-1].w < AUDJPY_candle_30[(start+1)/30-1-period].w){
        JPY[start][1].w += 1;
    }
    if (AUDJPY_candle_45[(start+1)/45-1].w > AUDJPY_candle_45[(start+1)/45-1-period].w){
        AUD[start][2].x += 1;
    }
    else if (AUDJPY_candle_45[(start+1)/45-1].w < AUDJPY_candle_45[(start+1)/45-1-period].w){
        JPY[start][2].x += 1;
    }
    if (AUDJPY_candle_60[(start+1)/60-1].w > AUDJPY_candle_60[(start+1)/60-1-period].w){
        AUD[start][2].y += 1;
    }
    else if (AUDJPY_candle_60[(start+1)/60-1].w < AUDJPY_candle_60[(start+1)/60-1-period].w){
        JPY[start][2].y += 1;
    }
    if (AUDJPY_candle_120[(start+1)/120-1].w > AUDJPY_candle_120[(start+1)/120-1-period].w){
        AUD[start][2].z += 1;
    }
    else if (AUDJPY_candle_120[(start+1)/120-1].w < AUDJPY_candle_120[(start+1)/120-1-period].w){
        JPY[start][2].z += 1;
    }
    if (AUDJPY_candle_180[(start+1)/180-1].w > AUDJPY_candle_180[(start+1)/180-1-period].w){
        AUD[start][2].w += 1;
    }
    else if (AUDJPY_candle_180[(start+1)/180-1].w < AUDJPY_candle_180[(start+1)/180-1-period].w){
        JPY[start][2].w += 1;
    }
    if (AUDJPY_candle_240[(start+1)/240-1].w > AUDJPY_candle_240[(start+1)/240-1-period].w){
        AUD[start][3].x += 1;
    }
    else if (AUDJPY_candle_240[(start+1)/240-1].w < AUDJPY_candle_240[(start+1)/240-1-period].w){
        JPY[start][3].x += 1;
    }
    if (AUDJPY_candle_360[(start+1)/360-1].w > AUDJPY_candle_360[(start+1)/360-1-period].w){
        AUD[start][3].y += 1;
    }
    else if (AUDJPY_candle_360[(start+1)/360-1].w < AUDJPY_candle_360[(start+1)/360-1-period].w){
        JPY[start][3].y += 1;
    }
    if (AUDJPY_candle_720[(start+1)/720-1].w > AUDJPY_candle_720[(start+1)/720-1-period].w){
        AUD[start][3].z += 1;
    }
    else if (AUDJPY_candle_720[(start+1)/720-1].w < AUDJPY_candle_720[(start+1)/720-1-period].w){
        JPY[start][3].z += 1;
    }
    if (AUDJPY_candle_1440[(start+1)/1440-1].w > AUDJPY_candle_1440[(start+1)/1440-1-period].w){
        AUD[start][3].w += 1;
    }
    else if (AUDJPY_candle_1440[(start+1)/1440-1].w < AUDJPY_candle_1440[(start+1)/1440-1-period].w){
        JPY[start][3].w += 1;
    }
    // AUDUSD
    if (AUDUSD_candle_1[(start+1)/1-1].w > AUDUSD_candle_1[(start+1)/1-1-period].w){
        AUD[start][0].x += 1;
    }
    else if (AUDUSD_candle_1[(start+1)/1-1].w < AUDUSD_candle_1[(start+1)/1-1-period].w){
        USD[start][0].x += 1;
    }
    if (AUDUSD_candle_2[(start+1)/2-1].w > AUDUSD_candle_2[(start+1)/2-1-period].w){
        AUD[start][0].y += 1;
    }
    else if (AUDUSD_candle_2[(start+1)/2-1].w < AUDUSD_candle_2[(start+1)/2-1-period].w){
        USD[start][0].y += 1;
    }
    if (AUDUSD_candle_3[(start+1)/3-1].w > AUDUSD_candle_3[(start+1)/3-1-period].w){
        AUD[start][0].z += 1;
    }
    else if (AUDUSD_candle_3[(start+1)/3-1].w < AUDUSD_candle_3[(start+1)/3-1-period].w){
        USD[start][0].z += 1;
    }
    if (AUDUSD_candle_4[(start+1)/4-1].w > AUDUSD_candle_4[(start+1)/4-1-period].w){
        AUD[start][0].w += 1;
    }
    else if (AUDUSD_candle_4[(start+1)/4-1].w < AUDUSD_candle_4[(start+1)/4-1-period].w){
        USD[start][0].w += 1;
    }
    if (AUDUSD_candle_5[(start+1)/5-1].w > AUDUSD_candle_5[(start+1)/5-1-period].w){
        AUD[start][1].x += 1;
    }
    else if (AUDUSD_candle_5[(start+1)/5-1].w < AUDUSD_candle_5[(start+1)/5-1-period].w){
        USD[start][1].x += 1;
    }
    if (AUDUSD_candle_10[(start+1)/10-1].w > AUDUSD_candle_10[(start+1)/10-1-period].w){
        AUD[start][1].y += 1;
    }
    else if (AUDUSD_candle_10[(start+1)/10-1].w < AUDUSD_candle_10[(start+1)/10-1-period].w){
        USD[start][1].y += 1;
    }
    if (AUDUSD_candle_15[(start+1)/15-1].w > AUDUSD_candle_15[(start+1)/15-1-period].w){
        AUD[start][1].z += 1;
    }
    else if (AUDUSD_candle_15[(start+1)/15-1].w < AUDUSD_candle_15[(start+1)/15-1-period].w){
        USD[start][1].z += 1;
    }
    if (AUDUSD_candle_30[(start+1)/30-1].w > AUDUSD_candle_30[(start+1)/30-1-period].w){
        AUD[start][1].w += 1;
    }
    else if (AUDUSD_candle_30[(start+1)/30-1].w < AUDUSD_candle_30[(start+1)/30-1-period].w){
        USD[start][1].w += 1;
    }
    if (AUDUSD_candle_45[(start+1)/45-1].w > AUDUSD_candle_45[(start+1)/45-1-period].w){
        AUD[start][2].x += 1;
    }
    else if (AUDUSD_candle_45[(start+1)/45-1].w < AUDUSD_candle_45[(start+1)/45-1-period].w){
        USD[start][2].x += 1;
    }
    if (AUDUSD_candle_60[(start+1)/60-1].w > AUDUSD_candle_60[(start+1)/60-1-period].w){
        AUD[start][2].y += 1;
    }
    else if (AUDUSD_candle_60[(start+1)/60-1].w < AUDUSD_candle_60[(start+1)/60-1-period].w){
        USD[start][2].y += 1;
    }
    if (AUDUSD_candle_120[(start+1)/120-1].w > AUDUSD_candle_120[(start+1)/120-1-period].w){
        AUD[start][2].z += 1;
    }
    else if (AUDUSD_candle_120[(start+1)/120-1].w < AUDUSD_candle_120[(start+1)/120-1-period].w){
        USD[start][2].z += 1;
    }
    if (AUDUSD_candle_180[(start+1)/180-1].w > AUDUSD_candle_180[(start+1)/180-1-period].w){
        AUD[start][2].w += 1;
    }
    else if (AUDUSD_candle_180[(start+1)/180-1].w < AUDUSD_candle_180[(start+1)/180-1-period].w){
        USD[start][2].w += 1;
    }
    if (AUDUSD_candle_240[(start+1)/240-1].w > AUDUSD_candle_240[(start+1)/240-1-period].w){
        AUD[start][3].x += 1;
    }
    else if (AUDUSD_candle_240[(start+1)/240-1].w < AUDUSD_candle_240[(start+1)/240-1-period].w){
        USD[start][3].x += 1;
    }
    if (AUDUSD_candle_360[(start+1)/360-1].w > AUDUSD_candle_360[(start+1)/360-1-period].w){
        AUD[start][3].y += 1;
    }
    else if (AUDUSD_candle_360[(start+1)/360-1].w < AUDUSD_candle_360[(start+1)/360-1-period].w){
        USD[start][3].y += 1;
    }
    if (AUDUSD_candle_720[(start+1)/720-1].w > AUDUSD_candle_720[(start+1)/720-1-period].w){
        AUD[start][3].z += 1;
    }
    else if (AUDUSD_candle_720[(start+1)/720-1].w < AUDUSD_candle_720[(start+1)/720-1-period].w){
        USD[start][3].z += 1;
    }
    if (AUDUSD_candle_1440[(start+1)/1440-1].w > AUDUSD_candle_1440[(start+1)/1440-1-period].w){
        AUD[start][3].w += 1;
    }
    else if (AUDUSD_candle_1440[(start+1)/1440-1].w < AUDUSD_candle_1440[(start+1)/1440-1-period].w){
        USD[start][3].w += 1;
    }
    // CADCHF
    if (CADCHF_candle_1[(start+1)/1-1].w > CADCHF_candle_1[(start+1)/1-1-period].w){
        CAD[start][0].x += 1;
    }
    else if (CADCHF_candle_1[(start+1)/1-1].w < CADCHF_candle_1[(start+1)/1-1-period].w){
        CHF[start][0].x += 1;
    }
    if (CADCHF_candle_2[(start+1)/2-1].w > CADCHF_candle_2[(start+1)/2-1-period].w){
        CAD[start][0].y += 1;
    }
    else if (CADCHF_candle_2[(start+1)/2-1].w < CADCHF_candle_2[(start+1)/2-1-period].w){
        CHF[start][0].y += 1;
    }
    if (CADCHF_candle_3[(start+1)/3-1].w > CADCHF_candle_3[(start+1)/3-1-period].w){
        CAD[start][0].z += 1;
    }
    else if (CADCHF_candle_3[(start+1)/3-1].w < CADCHF_candle_3[(start+1)/3-1-period].w){
        CHF[start][0].z += 1;
    }
    if (CADCHF_candle_4[(start+1)/4-1].w > CADCHF_candle_4[(start+1)/4-1-period].w){
        CAD[start][0].w += 1;
    }
    else if (CADCHF_candle_4[(start+1)/4-1].w < CADCHF_candle_4[(start+1)/4-1-period].w){
        CHF[start][0].w += 1;
    }
    if (CADCHF_candle_5[(start+1)/5-1].w > CADCHF_candle_5[(start+1)/5-1-period].w){
        CAD[start][1].x += 1;
    }
    else if (CADCHF_candle_5[(start+1)/5-1].w < CADCHF_candle_5[(start+1)/5-1-period].w){
        CHF[start][1].x += 1;
    }
    if (CADCHF_candle_10[(start+1)/10-1].w > CADCHF_candle_10[(start+1)/10-1-period].w){
        CAD[start][1].y += 1;
    }
    else if (CADCHF_candle_10[(start+1)/10-1].w < CADCHF_candle_10[(start+1)/10-1-period].w){
        CHF[start][1].y += 1;
    }
    if (CADCHF_candle_15[(start+1)/15-1].w > CADCHF_candle_15[(start+1)/15-1-period].w){
        CAD[start][1].z += 1;
    }
    else if (CADCHF_candle_15[(start+1)/15-1].w < CADCHF_candle_15[(start+1)/15-1-period].w){
        CHF[start][1].z += 1;
    }
    if (CADCHF_candle_30[(start+1)/30-1].w > CADCHF_candle_30[(start+1)/30-1-period].w){
        CAD[start][1].w += 1;
    }
    else if (CADCHF_candle_30[(start+1)/30-1].w < CADCHF_candle_30[(start+1)/30-1-period].w){
        CHF[start][1].w += 1;
    }
    if (CADCHF_candle_45[(start+1)/45-1].w > CADCHF_candle_45[(start+1)/45-1-period].w){
        CAD[start][2].x += 1;
    }
    else if (CADCHF_candle_45[(start+1)/45-1].w < CADCHF_candle_45[(start+1)/45-1-period].w){
        CHF[start][2].x += 1;
    }
    if (CADCHF_candle_60[(start+1)/60-1].w > CADCHF_candle_60[(start+1)/60-1-period].w){
        CAD[start][2].y += 1;
    }
    else if (CADCHF_candle_60[(start+1)/60-1].w < CADCHF_candle_60[(start+1)/60-1-period].w){
        CHF[start][2].y += 1;
    }
    if (CADCHF_candle_120[(start+1)/120-1].w > CADCHF_candle_120[(start+1)/120-1-period].w){
        CAD[start][2].z += 1;
    }
    else if (CADCHF_candle_120[(start+1)/120-1].w < CADCHF_candle_120[(start+1)/120-1-period].w){
        CHF[start][2].z += 1;
    }
    if (CADCHF_candle_180[(start+1)/180-1].w > CADCHF_candle_180[(start+1)/180-1-period].w){
        CAD[start][2].w += 1;
    }
    else if (CADCHF_candle_180[(start+1)/180-1].w < CADCHF_candle_180[(start+1)/180-1-period].w){
        CHF[start][2].w += 1;
    }
    if (CADCHF_candle_240[(start+1)/240-1].w > CADCHF_candle_240[(start+1)/240-1-period].w){
        CAD[start][3].x += 1;
    }
    else if (CADCHF_candle_240[(start+1)/240-1].w < CADCHF_candle_240[(start+1)/240-1-period].w){
        CHF[start][3].x += 1;
    }
    if (CADCHF_candle_360[(start+1)/360-1].w > CADCHF_candle_360[(start+1)/360-1-period].w){
        CAD[start][3].y += 1;
    }
    else if (CADCHF_candle_360[(start+1)/360-1].w < CADCHF_candle_360[(start+1)/360-1-period].w){
        CHF[start][3].y += 1;
    }
    if (CADCHF_candle_720[(start+1)/720-1].w > CADCHF_candle_720[(start+1)/720-1-period].w){
        CAD[start][3].z += 1;
    }
    else if (CADCHF_candle_720[(start+1)/720-1].w < CADCHF_candle_720[(start+1)/720-1-period].w){
        CHF[start][3].z += 1;
    }
    if (CADCHF_candle_1440[(start+1)/1440-1].w > CADCHF_candle_1440[(start+1)/1440-1-period].w){
        CAD[start][3].w += 1;
    }
    else if (CADCHF_candle_1440[(start+1)/1440-1].w < CADCHF_candle_1440[(start+1)/1440-1-period].w){
        CHF[start][3].w += 1;
    }
    // CADJPY
    if (CADJPY_candle_1[(start+1)/1-1].w > CADJPY_candle_1[(start+1)/1-1-period].w){
        CAD[start][0].x += 1;
    }
    else if (CADJPY_candle_1[(start+1)/1-1].w < CADJPY_candle_1[(start+1)/1-1-period].w){
        JPY[start][0].x += 1;
    }
    if (CADJPY_candle_2[(start+1)/2-1].w > CADJPY_candle_2[(start+1)/2-1-period].w){
        CAD[start][0].y += 1;
    }
    else if (CADJPY_candle_2[(start+1)/2-1].w < CADJPY_candle_2[(start+1)/2-1-period].w){
        JPY[start][0].y += 1;
    }
    if (CADJPY_candle_3[(start+1)/3-1].w > CADJPY_candle_3[(start+1)/3-1-period].w){
        CAD[start][0].z += 1;
    }
    else if (CADJPY_candle_3[(start+1)/3-1].w < CADJPY_candle_3[(start+1)/3-1-period].w){
        JPY[start][0].z += 1;
    }
    if (CADJPY_candle_4[(start+1)/4-1].w > CADJPY_candle_4[(start+1)/4-1-period].w){
        CAD[start][0].w += 1;
    }
    else if (CADJPY_candle_4[(start+1)/4-1].w < CADJPY_candle_4[(start+1)/4-1-period].w){
        JPY[start][0].w += 1;
    }
    if (CADJPY_candle_5[(start+1)/5-1].w > CADJPY_candle_5[(start+1)/5-1-period].w){
        CAD[start][1].x += 1;
    }
    else if (CADJPY_candle_5[(start+1)/5-1].w < CADJPY_candle_5[(start+1)/5-1-period].w){
        JPY[start][1].x += 1;
    }
    if (CADJPY_candle_10[(start+1)/10-1].w > CADJPY_candle_10[(start+1)/10-1-period].w){
        CAD[start][1].y += 1;
    }
    else if (CADJPY_candle_10[(start+1)/10-1].w < CADJPY_candle_10[(start+1)/10-1-period].w){
        JPY[start][1].y += 1;
    }
    if (CADJPY_candle_15[(start+1)/15-1].w > CADJPY_candle_15[(start+1)/15-1-period].w){
        CAD[start][1].z += 1;
    }
    else if (CADJPY_candle_15[(start+1)/15-1].w < CADJPY_candle_15[(start+1)/15-1-period].w){
        JPY[start][1].z += 1;
    }
    if (CADJPY_candle_30[(start+1)/30-1].w > CADJPY_candle_30[(start+1)/30-1-period].w){
        CAD[start][1].w += 1;
    }
    else if (CADJPY_candle_30[(start+1)/30-1].w < CADJPY_candle_30[(start+1)/30-1-period].w){
        JPY[start][1].w += 1;
    }
    if (CADJPY_candle_45[(start+1)/45-1].w > CADJPY_candle_45[(start+1)/45-1-period].w){
        CAD[start][2].x += 1;
    }
    else if (CADJPY_candle_45[(start+1)/45-1].w < CADJPY_candle_45[(start+1)/45-1-period].w){
        JPY[start][2].x += 1;
    }
    if (CADJPY_candle_60[(start+1)/60-1].w > CADJPY_candle_60[(start+1)/60-1-period].w){
        CAD[start][2].y += 1;
    }
    else if (CADJPY_candle_60[(start+1)/60-1].w < CADJPY_candle_60[(start+1)/60-1-period].w){
        JPY[start][2].y += 1;
    }
    if (CADJPY_candle_120[(start+1)/120-1].w > CADJPY_candle_120[(start+1)/120-1-period].w){
        CAD[start][2].z += 1;
    }
    else if (CADJPY_candle_120[(start+1)/120-1].w < CADJPY_candle_120[(start+1)/120-1-period].w){
        JPY[start][2].z += 1;
    }
    if (CADJPY_candle_180[(start+1)/180-1].w > CADJPY_candle_180[(start+1)/180-1-period].w){
        CAD[start][2].w += 1;
    }
    else if (CADJPY_candle_180[(start+1)/180-1].w < CADJPY_candle_180[(start+1)/180-1-period].w){
        JPY[start][2].w += 1;
    }
    if (CADJPY_candle_240[(start+1)/240-1].w > CADJPY_candle_240[(start+1)/240-1-period].w){
        CAD[start][3].x += 1;
    }
    else if (CADJPY_candle_240[(start+1)/240-1].w < CADJPY_candle_240[(start+1)/240-1-period].w){
        JPY[start][3].x += 1;
    }
    if (CADJPY_candle_360[(start+1)/360-1].w > CADJPY_candle_360[(start+1)/360-1-period].w){
        CAD[start][3].y += 1;
    }
    else if (CADJPY_candle_360[(start+1)/360-1].w < CADJPY_candle_360[(start+1)/360-1-period].w){
        JPY[start][3].y += 1;
    }
    if (CADJPY_candle_720[(start+1)/720-1].w > CADJPY_candle_720[(start+1)/720-1-period].w){
        CAD[start][3].z += 1;
    }
    else if (CADJPY_candle_720[(start+1)/720-1].w < CADJPY_candle_720[(start+1)/720-1-period].w){
        JPY[start][3].z += 1;
    }
    if (CADJPY_candle_1440[(start+1)/1440-1].w > CADJPY_candle_1440[(start+1)/1440-1-period].w){
        CAD[start][3].w += 1;
    }
    else if (CADJPY_candle_1440[(start+1)/1440-1].w < CADJPY_candle_1440[(start+1)/1440-1-period].w){
        JPY[start][3].w += 1;
    }
    // CHFJPY
    if (CHFJPY_candle_1[(start+1)/1-1].w > CHFJPY_candle_1[(start+1)/1-1-period].w){
        CHF[start][0].x += 1;
    }
    else if (CHFJPY_candle_1[(start+1)/1-1].w < CHFJPY_candle_1[(start+1)/1-1-period].w){
        JPY[start][0].x += 1;
    }
    if (CHFJPY_candle_2[(start+1)/2-1].w > CHFJPY_candle_2[(start+1)/2-1-period].w){
        CHF[start][0].y += 1;
    }
    else if (CHFJPY_candle_2[(start+1)/2-1].w < CHFJPY_candle_2[(start+1)/2-1-period].w){
        JPY[start][0].y += 1;
    }
    if (CHFJPY_candle_3[(start+1)/3-1].w > CHFJPY_candle_3[(start+1)/3-1-period].w){
        CHF[start][0].z += 1;
    }
    else if (CHFJPY_candle_3[(start+1)/3-1].w < CHFJPY_candle_3[(start+1)/3-1-period].w){
        JPY[start][0].z += 1;
    }
    if (CHFJPY_candle_4[(start+1)/4-1].w > CHFJPY_candle_4[(start+1)/4-1-period].w){
        CHF[start][0].w += 1;
    }
    else if (CHFJPY_candle_4[(start+1)/4-1].w < CHFJPY_candle_4[(start+1)/4-1-period].w){
        JPY[start][0].w += 1;
    }
    if (CHFJPY_candle_5[(start+1)/5-1].w > CHFJPY_candle_5[(start+1)/5-1-period].w){
        CHF[start][1].x += 1;
    }
    else if (CHFJPY_candle_5[(start+1)/5-1].w < CHFJPY_candle_5[(start+1)/5-1-period].w){
        JPY[start][1].x += 1;
    }
    if (CHFJPY_candle_10[(start+1)/10-1].w > CHFJPY_candle_10[(start+1)/10-1-period].w){
        CHF[start][1].y += 1;
    }
    else if (CHFJPY_candle_10[(start+1)/10-1].w < CHFJPY_candle_10[(start+1)/10-1-period].w){
        JPY[start][1].y += 1;
    }
    if (CHFJPY_candle_15[(start+1)/15-1].w > CHFJPY_candle_15[(start+1)/15-1-period].w){
        CHF[start][1].z += 1;
    }
    else if (CHFJPY_candle_15[(start+1)/15-1].w < CHFJPY_candle_15[(start+1)/15-1-period].w){
        JPY[start][1].z += 1;
    }
    if (CHFJPY_candle_30[(start+1)/30-1].w > CHFJPY_candle_30[(start+1)/30-1-period].w){
        CHF[start][1].w += 1;
    }
    else if (CHFJPY_candle_30[(start+1)/30-1].w < CHFJPY_candle_30[(start+1)/30-1-period].w){
        JPY[start][1].w += 1;
    }
    if (CHFJPY_candle_45[(start+1)/45-1].w > CHFJPY_candle_45[(start+1)/45-1-period].w){
        CHF[start][2].x += 1;
    }
    else if (CHFJPY_candle_45[(start+1)/45-1].w < CHFJPY_candle_45[(start+1)/45-1-period].w){
        JPY[start][2].x += 1;
    }
    if (CHFJPY_candle_60[(start+1)/60-1].w > CHFJPY_candle_60[(start+1)/60-1-period].w){
        CHF[start][2].y += 1;
    }
    else if (CHFJPY_candle_60[(start+1)/60-1].w < CHFJPY_candle_60[(start+1)/60-1-period].w){
        JPY[start][2].y += 1;
    }
    if (CHFJPY_candle_120[(start+1)/120-1].w > CHFJPY_candle_120[(start+1)/120-1-period].w){
        CHF[start][2].z += 1;
    }
    else if (CHFJPY_candle_120[(start+1)/120-1].w < CHFJPY_candle_120[(start+1)/120-1-period].w){
        JPY[start][2].z += 1;
    }
    if (CHFJPY_candle_180[(start+1)/180-1].w > CHFJPY_candle_180[(start+1)/180-1-period].w){
        CHF[start][2].w += 1;
    }
    else if (CHFJPY_candle_180[(start+1)/180-1].w < CHFJPY_candle_180[(start+1)/180-1-period].w){
        JPY[start][2].w += 1;
    }
    if (CHFJPY_candle_240[(start+1)/240-1].w > CHFJPY_candle_240[(start+1)/240-1-period].w){
        CHF[start][3].x += 1;
    }
    else if (CHFJPY_candle_240[(start+1)/240-1].w < CHFJPY_candle_240[(start+1)/240-1-period].w){
        JPY[start][3].x += 1;
    }
    if (CHFJPY_candle_360[(start+1)/360-1].w > CHFJPY_candle_360[(start+1)/360-1-period].w){
        CHF[start][3].y += 1;
    }
    else if (CHFJPY_candle_360[(start+1)/360-1].w < CHFJPY_candle_360[(start+1)/360-1-period].w){
        JPY[start][3].y += 1;
    }
    if (CHFJPY_candle_720[(start+1)/720-1].w > CHFJPY_candle_720[(start+1)/720-1-period].w){
        CHF[start][3].z += 1;
    }
    else if (CHFJPY_candle_720[(start+1)/720-1].w < CHFJPY_candle_720[(start+1)/720-1-period].w){
        JPY[start][3].z += 1;
    }
    if (CHFJPY_candle_1440[(start+1)/1440-1].w > CHFJPY_candle_1440[(start+1)/1440-1-period].w){
        CHF[start][3].w += 1;
    }
    else if (CHFJPY_candle_1440[(start+1)/1440-1].w < CHFJPY_candle_1440[(start+1)/1440-1-period].w){
        JPY[start][3].w += 1;
    }
    // EURAUD
    if (EURAUD_candle_1[(start+1)/1-1].w > EURAUD_candle_1[(start+1)/1-1-period].w){
        EUR[start][0].x += 1;
    }
    else if (EURAUD_candle_1[(start+1)/1-1].w < EURAUD_candle_1[(start+1)/1-1-period].w){
        AUD[start][0].x += 1;
    }
    if (EURAUD_candle_2[(start+1)/2-1].w > EURAUD_candle_2[(start+1)/2-1-period].w){
        EUR[start][0].y += 1;
    }
    else if (EURAUD_candle_2[(start+1)/2-1].w < EURAUD_candle_2[(start+1)/2-1-period].w){
        AUD[start][0].y += 1;
    }
    if (EURAUD_candle_3[(start+1)/3-1].w > EURAUD_candle_3[(start+1)/3-1-period].w){
        EUR[start][0].z += 1;
    }
    else if (EURAUD_candle_3[(start+1)/3-1].w < EURAUD_candle_3[(start+1)/3-1-period].w){
        AUD[start][0].z += 1;
    }
    if (EURAUD_candle_4[(start+1)/4-1].w > EURAUD_candle_4[(start+1)/4-1-period].w){
        EUR[start][0].w += 1;
    }
    else if (EURAUD_candle_4[(start+1)/4-1].w < EURAUD_candle_4[(start+1)/4-1-period].w){
        AUD[start][0].w += 1;
    }
    if (EURAUD_candle_5[(start+1)/5-1].w > EURAUD_candle_5[(start+1)/5-1-period].w){
        EUR[start][1].x += 1;
    }
    else if (EURAUD_candle_5[(start+1)/5-1].w < EURAUD_candle_5[(start+1)/5-1-period].w){
        AUD[start][1].x += 1;
    }
    if (EURAUD_candle_10[(start+1)/10-1].w > EURAUD_candle_10[(start+1)/10-1-period].w){
        EUR[start][1].y += 1;
    }
    else if (EURAUD_candle_10[(start+1)/10-1].w < EURAUD_candle_10[(start+1)/10-1-period].w){
        AUD[start][1].y += 1;
    }
    if (EURAUD_candle_15[(start+1)/15-1].w > EURAUD_candle_15[(start+1)/15-1-period].w){
        EUR[start][1].z += 1;
    }
    else if (EURAUD_candle_15[(start+1)/15-1].w < EURAUD_candle_15[(start+1)/15-1-period].w){
        AUD[start][1].z += 1;
    }
    if (EURAUD_candle_30[(start+1)/30-1].w > EURAUD_candle_30[(start+1)/30-1-period].w){
        EUR[start][1].w += 1;
    }
    else if (EURAUD_candle_30[(start+1)/30-1].w < EURAUD_candle_30[(start+1)/30-1-period].w){
        AUD[start][1].w += 1;
    }
    if (EURAUD_candle_45[(start+1)/45-1].w > EURAUD_candle_45[(start+1)/45-1-period].w){
        EUR[start][2].x += 1;
    }
    else if (EURAUD_candle_45[(start+1)/45-1].w < EURAUD_candle_45[(start+1)/45-1-period].w){
        AUD[start][2].x += 1;
    }
    if (EURAUD_candle_60[(start+1)/60-1].w > EURAUD_candle_60[(start+1)/60-1-period].w){
        EUR[start][2].y += 1;
    }
    else if (EURAUD_candle_60[(start+1)/60-1].w < EURAUD_candle_60[(start+1)/60-1-period].w){
        AUD[start][2].y += 1;
    }
    if (EURAUD_candle_120[(start+1)/120-1].w > EURAUD_candle_120[(start+1)/120-1-period].w){
        EUR[start][2].z += 1;
    }
    else if (EURAUD_candle_120[(start+1)/120-1].w < EURAUD_candle_120[(start+1)/120-1-period].w){
        AUD[start][2].z += 1;
    }
    if (EURAUD_candle_180[(start+1)/180-1].w > EURAUD_candle_180[(start+1)/180-1-period].w){
        EUR[start][2].w += 1;
    }
    else if (EURAUD_candle_180[(start+1)/180-1].w < EURAUD_candle_180[(start+1)/180-1-period].w){
        AUD[start][2].w += 1;
    }
    if (EURAUD_candle_240[(start+1)/240-1].w > EURAUD_candle_240[(start+1)/240-1-period].w){
        EUR[start][3].x += 1;
    }
    else if (EURAUD_candle_240[(start+1)/240-1].w < EURAUD_candle_240[(start+1)/240-1-period].w){
        AUD[start][3].x += 1;
    }
    if (EURAUD_candle_360[(start+1)/360-1].w > EURAUD_candle_360[(start+1)/360-1-period].w){
        EUR[start][3].y += 1;
    }
    else if (EURAUD_candle_360[(start+1)/360-1].w < EURAUD_candle_360[(start+1)/360-1-period].w){
        AUD[start][3].y += 1;
    }
    if (EURAUD_candle_720[(start+1)/720-1].w > EURAUD_candle_720[(start+1)/720-1-period].w){
        EUR[start][3].z += 1;
    }
    else if (EURAUD_candle_720[(start+1)/720-1].w < EURAUD_candle_720[(start+1)/720-1-period].w){
        AUD[start][3].z += 1;
    }
    if (EURAUD_candle_1440[(start+1)/1440-1].w > EURAUD_candle_1440[(start+1)/1440-1-period].w){
        EUR[start][3].w += 1;
    }
    else if (EURAUD_candle_1440[(start+1)/1440-1].w < EURAUD_candle_1440[(start+1)/1440-1-period].w){
        AUD[start][3].w += 1;
    }
    // EURCAD
    if (EURCAD_candle_1[(start+1)/1-1].w > EURCAD_candle_1[(start+1)/1-1-period].w){
        EUR[start][0].x += 1;
    }
    else if (EURCAD_candle_1[(start+1)/1-1].w < EURCAD_candle_1[(start+1)/1-1-period].w){
        CAD[start][0].x += 1;
    }
    if (EURCAD_candle_2[(start+1)/2-1].w > EURCAD_candle_2[(start+1)/2-1-period].w){
        EUR[start][0].y += 1;
    }
    else if (EURCAD_candle_2[(start+1)/2-1].w < EURCAD_candle_2[(start+1)/2-1-period].w){
        CAD[start][0].y += 1;
    }
    if (EURCAD_candle_3[(start+1)/3-1].w > EURCAD_candle_3[(start+1)/3-1-period].w){
        EUR[start][0].z += 1;
    }
    else if (EURCAD_candle_3[(start+1)/3-1].w < EURCAD_candle_3[(start+1)/3-1-period].w){
        CAD[start][0].z += 1;
    }
    if (EURCAD_candle_4[(start+1)/4-1].w > EURCAD_candle_4[(start+1)/4-1-period].w){
        EUR[start][0].w += 1;
    }
    else if (EURCAD_candle_4[(start+1)/4-1].w < EURCAD_candle_4[(start+1)/4-1-period].w){
        CAD[start][0].w += 1;
    }
    if (EURCAD_candle_5[(start+1)/5-1].w > EURCAD_candle_5[(start+1)/5-1-period].w){
        EUR[start][1].x += 1;
    }
    else if (EURCAD_candle_5[(start+1)/5-1].w < EURCAD_candle_5[(start+1)/5-1-period].w){
        CAD[start][1].x += 1;
    }
    if (EURCAD_candle_10[(start+1)/10-1].w > EURCAD_candle_10[(start+1)/10-1-period].w){
        EUR[start][1].y += 1;
    }
    else if (EURCAD_candle_10[(start+1)/10-1].w < EURCAD_candle_10[(start+1)/10-1-period].w){
        CAD[start][1].y += 1;
    }
    if (EURCAD_candle_15[(start+1)/15-1].w > EURCAD_candle_15[(start+1)/15-1-period].w){
        EUR[start][1].z += 1;
    }
    else if (EURCAD_candle_15[(start+1)/15-1].w < EURCAD_candle_15[(start+1)/15-1-period].w){
        CAD[start][1].z += 1;
    }
    if (EURCAD_candle_30[(start+1)/30-1].w > EURCAD_candle_30[(start+1)/30-1-period].w){
        EUR[start][1].w += 1;
    }
    else if (EURCAD_candle_30[(start+1)/30-1].w < EURCAD_candle_30[(start+1)/30-1-period].w){
        CAD[start][1].w += 1;
    }
    if (EURCAD_candle_45[(start+1)/45-1].w > EURCAD_candle_45[(start+1)/45-1-period].w){
        EUR[start][2].x += 1;
    }
    else if (EURCAD_candle_45[(start+1)/45-1].w < EURCAD_candle_45[(start+1)/45-1-period].w){
        CAD[start][2].x += 1;
    }
    if (EURCAD_candle_60[(start+1)/60-1].w > EURCAD_candle_60[(start+1)/60-1-period].w){
        EUR[start][2].y += 1;
    }
    else if (EURCAD_candle_60[(start+1)/60-1].w < EURCAD_candle_60[(start+1)/60-1-period].w){
        CAD[start][2].y += 1;
    }
    if (EURCAD_candle_120[(start+1)/120-1].w > EURCAD_candle_120[(start+1)/120-1-period].w){
        EUR[start][2].z += 1;
    }
    else if (EURCAD_candle_120[(start+1)/120-1].w < EURCAD_candle_120[(start+1)/120-1-period].w){
        CAD[start][2].z += 1;
    }
    if (EURCAD_candle_180[(start+1)/180-1].w > EURCAD_candle_180[(start+1)/180-1-period].w){
        EUR[start][2].w += 1;
    }
    else if (EURCAD_candle_180[(start+1)/180-1].w < EURCAD_candle_180[(start+1)/180-1-period].w){
        CAD[start][2].w += 1;
    }
    if (EURCAD_candle_240[(start+1)/240-1].w > EURCAD_candle_240[(start+1)/240-1-period].w){
        EUR[start][3].x += 1;
    }
    else if (EURCAD_candle_240[(start+1)/240-1].w < EURCAD_candle_240[(start+1)/240-1-period].w){
        CAD[start][3].x += 1;
    }
    if (EURCAD_candle_360[(start+1)/360-1].w > EURCAD_candle_360[(start+1)/360-1-period].w){
        EUR[start][3].y += 1;
    }
    else if (EURCAD_candle_360[(start+1)/360-1].w < EURCAD_candle_360[(start+1)/360-1-period].w){
        CAD[start][3].y += 1;
    }
    if (EURCAD_candle_720[(start+1)/720-1].w > EURCAD_candle_720[(start+1)/720-1-period].w){
        EUR[start][3].z += 1;
    }
    else if (EURCAD_candle_720[(start+1)/720-1].w < EURCAD_candle_720[(start+1)/720-1-period].w){
        CAD[start][3].z += 1;
    }
    if (EURCAD_candle_1440[(start+1)/1440-1].w > EURCAD_candle_1440[(start+1)/1440-1-period].w){
        EUR[start][3].w += 1;
    }
    else if (EURCAD_candle_1440[(start+1)/1440-1].w < EURCAD_candle_1440[(start+1)/1440-1-period].w){
        CAD[start][3].w += 1;
    }
    // EURCHF
    if (EURCHF_candle_1[(start+1)/1-1].w > EURCHF_candle_1[(start+1)/1-1-period].w){
        EUR[start][0].x += 1;
    }
    else if (EURCHF_candle_1[(start+1)/1-1].w < EURCHF_candle_1[(start+1)/1-1-period].w){
        CHF[start][0].x += 1;
    }
    if (EURCHF_candle_2[(start+1)/2-1].w > EURCHF_candle_2[(start+1)/2-1-period].w){
        EUR[start][0].y += 1;
    }
    else if (EURCHF_candle_2[(start+1)/2-1].w < EURCHF_candle_2[(start+1)/2-1-period].w){
        CHF[start][0].y += 1;
    }
    if (EURCHF_candle_3[(start+1)/3-1].w > EURCHF_candle_3[(start+1)/3-1-period].w){
        EUR[start][0].z += 1;
    }
    else if (EURCHF_candle_3[(start+1)/3-1].w < EURCHF_candle_3[(start+1)/3-1-period].w){
        CHF[start][0].z += 1;
    }
    if (EURCHF_candle_4[(start+1)/4-1].w > EURCHF_candle_4[(start+1)/4-1-period].w){
        EUR[start][0].w += 1;
    }
    else if (EURCHF_candle_4[(start+1)/4-1].w < EURCHF_candle_4[(start+1)/4-1-period].w){
        CHF[start][0].w += 1;
    }
    if (EURCHF_candle_5[(start+1)/5-1].w > EURCHF_candle_5[(start+1)/5-1-period].w){
        EUR[start][1].x += 1;
    }
    else if (EURCHF_candle_5[(start+1)/5-1].w < EURCHF_candle_5[(start+1)/5-1-period].w){
        CHF[start][1].x += 1;
    }
    if (EURCHF_candle_10[(start+1)/10-1].w > EURCHF_candle_10[(start+1)/10-1-period].w){
        EUR[start][1].y += 1;
    }
    else if (EURCHF_candle_10[(start+1)/10-1].w < EURCHF_candle_10[(start+1)/10-1-period].w){
        CHF[start][1].y += 1;
    }
    if (EURCHF_candle_15[(start+1)/15-1].w > EURCHF_candle_15[(start+1)/15-1-period].w){
        EUR[start][1].z += 1;
    }
    else if (EURCHF_candle_15[(start+1)/15-1].w < EURCHF_candle_15[(start+1)/15-1-period].w){
        CHF[start][1].z += 1;
    }
    if (EURCHF_candle_30[(start+1)/30-1].w > EURCHF_candle_30[(start+1)/30-1-period].w){
        EUR[start][1].w += 1;
    }
    else if (EURCHF_candle_30[(start+1)/30-1].w < EURCHF_candle_30[(start+1)/30-1-period].w){
        CHF[start][1].w += 1;
    }
    if (EURCHF_candle_45[(start+1)/45-1].w > EURCHF_candle_45[(start+1)/45-1-period].w){
        EUR[start][2].x += 1;
    }
    else if (EURCHF_candle_45[(start+1)/45-1].w < EURCHF_candle_45[(start+1)/45-1-period].w){
        CHF[start][2].x += 1;
    }
    if (EURCHF_candle_60[(start+1)/60-1].w > EURCHF_candle_60[(start+1)/60-1-period].w){
        EUR[start][2].y += 1;
    }
    else if (EURCHF_candle_60[(start+1)/60-1].w < EURCHF_candle_60[(start+1)/60-1-period].w){
        CHF[start][2].y += 1;
    }
    if (EURCHF_candle_120[(start+1)/120-1].w > EURCHF_candle_120[(start+1)/120-1-period].w){
        EUR[start][2].z += 1;
    }
    else if (EURCHF_candle_120[(start+1)/120-1].w < EURCHF_candle_120[(start+1)/120-1-period].w){
        CHF[start][2].z += 1;
    }
    if (EURCHF_candle_180[(start+1)/180-1].w > EURCHF_candle_180[(start+1)/180-1-period].w){
        EUR[start][2].w += 1;
    }
    else if (EURCHF_candle_180[(start+1)/180-1].w < EURCHF_candle_180[(start+1)/180-1-period].w){
        CHF[start][2].w += 1;
    }
    if (EURCHF_candle_240[(start+1)/240-1].w > EURCHF_candle_240[(start+1)/240-1-period].w){
        EUR[start][3].x += 1;
    }
    else if (EURCHF_candle_240[(start+1)/240-1].w < EURCHF_candle_240[(start+1)/240-1-period].w){
        CHF[start][3].x += 1;
    }
    if (EURCHF_candle_360[(start+1)/360-1].w > EURCHF_candle_360[(start+1)/360-1-period].w){
        EUR[start][3].y += 1;
    }
    else if (EURCHF_candle_360[(start+1)/360-1].w < EURCHF_candle_360[(start+1)/360-1-period].w){
        CHF[start][3].y += 1;
    }
    if (EURCHF_candle_720[(start+1)/720-1].w > EURCHF_candle_720[(start+1)/720-1-period].w){
        EUR[start][3].z += 1;
    }
    else if (EURCHF_candle_720[(start+1)/720-1].w < EURCHF_candle_720[(start+1)/720-1-period].w){
        CHF[start][3].z += 1;
    }
    if (EURCHF_candle_1440[(start+1)/1440-1].w > EURCHF_candle_1440[(start+1)/1440-1-period].w){
        EUR[start][3].w += 1;
    }
    else if (EURCHF_candle_1440[(start+1)/1440-1].w < EURCHF_candle_1440[(start+1)/1440-1-period].w){
        CHF[start][3].w += 1;
    }
    // EURGBP
    if (EURGBP_candle_1[(start+1)/1-1].w > EURGBP_candle_1[(start+1)/1-1-period].w){
        EUR[start][0].x += 1;
    }
    else if (EURGBP_candle_1[(start+1)/1-1].w < EURGBP_candle_1[(start+1)/1-1-period].w){
        GBP[start][0].x += 1;
    }
    if (EURGBP_candle_2[(start+1)/2-1].w > EURGBP_candle_2[(start+1)/2-1-period].w){
        EUR[start][0].y += 1;
    }
    else if (EURGBP_candle_2[(start+1)/2-1].w < EURGBP_candle_2[(start+1)/2-1-period].w){
        GBP[start][0].y += 1;
    }
    if (EURGBP_candle_3[(start+1)/3-1].w > EURGBP_candle_3[(start+1)/3-1-period].w){
        EUR[start][0].z += 1;
    }
    else if (EURGBP_candle_3[(start+1)/3-1].w < EURGBP_candle_3[(start+1)/3-1-period].w){
        GBP[start][0].z += 1;
    }
    if (EURGBP_candle_4[(start+1)/4-1].w > EURGBP_candle_4[(start+1)/4-1-period].w){
        EUR[start][0].w += 1;
    }
    else if (EURGBP_candle_4[(start+1)/4-1].w < EURGBP_candle_4[(start+1)/4-1-period].w){
        GBP[start][0].w += 1;
    }
    if (EURGBP_candle_5[(start+1)/5-1].w > EURGBP_candle_5[(start+1)/5-1-period].w){
        EUR[start][1].x += 1;
    }
    else if (EURGBP_candle_5[(start+1)/5-1].w < EURGBP_candle_5[(start+1)/5-1-period].w){
        GBP[start][1].x += 1;
    }
    if (EURGBP_candle_10[(start+1)/10-1].w > EURGBP_candle_10[(start+1)/10-1-period].w){
        EUR[start][1].y += 1;
    }
    else if (EURGBP_candle_10[(start+1)/10-1].w < EURGBP_candle_10[(start+1)/10-1-period].w){
        GBP[start][1].y += 1;
    }
    if (EURGBP_candle_15[(start+1)/15-1].w > EURGBP_candle_15[(start+1)/15-1-period].w){
        EUR[start][1].z += 1;
    }
    else if (EURGBP_candle_15[(start+1)/15-1].w < EURGBP_candle_15[(start+1)/15-1-period].w){
        GBP[start][1].z += 1;
    }
    if (EURGBP_candle_30[(start+1)/30-1].w > EURGBP_candle_30[(start+1)/30-1-period].w){
        EUR[start][1].w += 1;
    }
    else if (EURGBP_candle_30[(start+1)/30-1].w < EURGBP_candle_30[(start+1)/30-1-period].w){
        GBP[start][1].w += 1;
    }
    if (EURGBP_candle_45[(start+1)/45-1].w > EURGBP_candle_45[(start+1)/45-1-period].w){
        EUR[start][2].x += 1;
    }
    else if (EURGBP_candle_45[(start+1)/45-1].w < EURGBP_candle_45[(start+1)/45-1-period].w){
        GBP[start][2].x += 1;
    }
    if (EURGBP_candle_60[(start+1)/60-1].w > EURGBP_candle_60[(start+1)/60-1-period].w){
        EUR[start][2].y += 1;
    }
    else if (EURGBP_candle_60[(start+1)/60-1].w < EURGBP_candle_60[(start+1)/60-1-period].w){
        GBP[start][2].y += 1;
    }
    if (EURGBP_candle_120[(start+1)/120-1].w > EURGBP_candle_120[(start+1)/120-1-period].w){
        EUR[start][2].z += 1;
    }
    else if (EURGBP_candle_120[(start+1)/120-1].w < EURGBP_candle_120[(start+1)/120-1-period].w){
        GBP[start][2].z += 1;
    }
    if (EURGBP_candle_180[(start+1)/180-1].w > EURGBP_candle_180[(start+1)/180-1-period].w){
        EUR[start][2].w += 1;
    }
    else if (EURGBP_candle_180[(start+1)/180-1].w < EURGBP_candle_180[(start+1)/180-1-period].w){
        GBP[start][2].w += 1;
    }
    if (EURGBP_candle_240[(start+1)/240-1].w > EURGBP_candle_240[(start+1)/240-1-period].w){
        EUR[start][3].x += 1;
    }
    else if (EURGBP_candle_240[(start+1)/240-1].w < EURGBP_candle_240[(start+1)/240-1-period].w){
        GBP[start][3].x += 1;
    }
    if (EURGBP_candle_360[(start+1)/360-1].w > EURGBP_candle_360[(start+1)/360-1-period].w){
        EUR[start][3].y += 1;
    }
    else if (EURGBP_candle_360[(start+1)/360-1].w < EURGBP_candle_360[(start+1)/360-1-period].w){
        GBP[start][3].y += 1;
    }
    if (EURGBP_candle_720[(start+1)/720-1].w > EURGBP_candle_720[(start+1)/720-1-period].w){
        EUR[start][3].z += 1;
    }
    else if (EURGBP_candle_720[(start+1)/720-1].w < EURGBP_candle_720[(start+1)/720-1-period].w){
        GBP[start][3].z += 1;
    }
    if (EURGBP_candle_1440[(start+1)/1440-1].w > EURGBP_candle_1440[(start+1)/1440-1-period].w){
        EUR[start][3].w += 1;
    }
    else if (EURGBP_candle_1440[(start+1)/1440-1].w < EURGBP_candle_1440[(start+1)/1440-1-period].w){
        GBP[start][3].w += 1;
    }
    // EURJPY
    if (EURJPY_candle_1[(start+1)/1-1].w > EURJPY_candle_1[(start+1)/1-1-period].w){
        EUR[start][0].x += 1;
    }
    else if (EURJPY_candle_1[(start+1)/1-1].w < EURJPY_candle_1[(start+1)/1-1-period].w){
        JPY[start][0].x += 1;
    }
    if (EURJPY_candle_2[(start+1)/2-1].w > EURJPY_candle_2[(start+1)/2-1-period].w){
        EUR[start][0].y += 1;
    }
    else if (EURJPY_candle_2[(start+1)/2-1].w < EURJPY_candle_2[(start+1)/2-1-period].w){
        JPY[start][0].y += 1;
    }
    if (EURJPY_candle_3[(start+1)/3-1].w > EURJPY_candle_3[(start+1)/3-1-period].w){
        EUR[start][0].z += 1;
    }
    else if (EURJPY_candle_3[(start+1)/3-1].w < EURJPY_candle_3[(start+1)/3-1-period].w){
        JPY[start][0].z += 1;
    }
    if (EURJPY_candle_4[(start+1)/4-1].w > EURJPY_candle_4[(start+1)/4-1-period].w){
        EUR[start][0].w += 1;
    }
    else if (EURJPY_candle_4[(start+1)/4-1].w < EURJPY_candle_4[(start+1)/4-1-period].w){
        JPY[start][0].w += 1;
    }
    if (EURJPY_candle_5[(start+1)/5-1].w > EURJPY_candle_5[(start+1)/5-1-period].w){
        EUR[start][1].x += 1;
    }
    else if (EURJPY_candle_5[(start+1)/5-1].w < EURJPY_candle_5[(start+1)/5-1-period].w){
        JPY[start][1].x += 1;
    }
    if (EURJPY_candle_10[(start+1)/10-1].w > EURJPY_candle_10[(start+1)/10-1-period].w){
        EUR[start][1].y += 1;
    }
    else if (EURJPY_candle_10[(start+1)/10-1].w < EURJPY_candle_10[(start+1)/10-1-period].w){
        JPY[start][1].y += 1;
    }
    if (EURJPY_candle_15[(start+1)/15-1].w > EURJPY_candle_15[(start+1)/15-1-period].w){
        EUR[start][1].z += 1;
    }
    else if (EURJPY_candle_15[(start+1)/15-1].w < EURJPY_candle_15[(start+1)/15-1-period].w){
        JPY[start][1].z += 1;
    }
    if (EURJPY_candle_30[(start+1)/30-1].w > EURJPY_candle_30[(start+1)/30-1-period].w){
        EUR[start][1].w += 1;
    }
    else if (EURJPY_candle_30[(start+1)/30-1].w < EURJPY_candle_30[(start+1)/30-1-period].w){
        JPY[start][1].w += 1;
    }
    if (EURJPY_candle_45[(start+1)/45-1].w > EURJPY_candle_45[(start+1)/45-1-period].w){
        EUR[start][2].x += 1;
    }
    else if (EURJPY_candle_45[(start+1)/45-1].w < EURJPY_candle_45[(start+1)/45-1-period].w){
        JPY[start][2].x += 1;
    }
    if (EURJPY_candle_60[(start+1)/60-1].w > EURJPY_candle_60[(start+1)/60-1-period].w){
        EUR[start][2].y += 1;
    }
    else if (EURJPY_candle_60[(start+1)/60-1].w < EURJPY_candle_60[(start+1)/60-1-period].w){
        JPY[start][2].y += 1;
    }
    if (EURJPY_candle_120[(start+1)/120-1].w > EURJPY_candle_120[(start+1)/120-1-period].w){
        EUR[start][2].z += 1;
    }
    else if (EURJPY_candle_120[(start+1)/120-1].w < EURJPY_candle_120[(start+1)/120-1-period].w){
        JPY[start][2].z += 1;
    }
    if (EURJPY_candle_180[(start+1)/180-1].w > EURJPY_candle_180[(start+1)/180-1-period].w){
        EUR[start][2].w += 1;
    }
    else if (EURJPY_candle_180[(start+1)/180-1].w < EURJPY_candle_180[(start+1)/180-1-period].w){
        JPY[start][2].w += 1;
    }
    if (EURJPY_candle_240[(start+1)/240-1].w > EURJPY_candle_240[(start+1)/240-1-period].w){
        EUR[start][3].x += 1;
    }
    else if (EURJPY_candle_240[(start+1)/240-1].w < EURJPY_candle_240[(start+1)/240-1-period].w){
        JPY[start][3].x += 1;
    }
    if (EURJPY_candle_360[(start+1)/360-1].w > EURJPY_candle_360[(start+1)/360-1-period].w){
        EUR[start][3].y += 1;
    }
    else if (EURJPY_candle_360[(start+1)/360-1].w < EURJPY_candle_360[(start+1)/360-1-period].w){
        JPY[start][3].y += 1;
    }
    if (EURJPY_candle_720[(start+1)/720-1].w > EURJPY_candle_720[(start+1)/720-1-period].w){
        EUR[start][3].z += 1;
    }
    else if (EURJPY_candle_720[(start+1)/720-1].w < EURJPY_candle_720[(start+1)/720-1-period].w){
        JPY[start][3].z += 1;
    }
    if (EURJPY_candle_1440[(start+1)/1440-1].w > EURJPY_candle_1440[(start+1)/1440-1-period].w){
        EUR[start][3].w += 1;
    }
    else if (EURJPY_candle_1440[(start+1)/1440-1].w < EURJPY_candle_1440[(start+1)/1440-1-period].w){
        JPY[start][3].w += 1;
    }
    // EURUSD
    if (EURUSD_candle_1[(start+1)/1-1].w > EURUSD_candle_1[(start+1)/1-1-period].w){
        EUR[start][0].x += 1;
    }
    else if (EURUSD_candle_1[(start+1)/1-1].w < EURUSD_candle_1[(start+1)/1-1-period].w){
        USD[start][0].x += 1;
    }
    if (EURUSD_candle_2[(start+1)/2-1].w > EURUSD_candle_2[(start+1)/2-1-period].w){
        EUR[start][0].y += 1;
    }
    else if (EURUSD_candle_2[(start+1)/2-1].w < EURUSD_candle_2[(start+1)/2-1-period].w){
        USD[start][0].y += 1;
    }
    if (EURUSD_candle_3[(start+1)/3-1].w > EURUSD_candle_3[(start+1)/3-1-period].w){
        EUR[start][0].z += 1;
    }
    else if (EURUSD_candle_3[(start+1)/3-1].w < EURUSD_candle_3[(start+1)/3-1-period].w){
        USD[start][0].z += 1;
    }
    if (EURUSD_candle_4[(start+1)/4-1].w > EURUSD_candle_4[(start+1)/4-1-period].w){
        EUR[start][0].w += 1;
    }
    else if (EURUSD_candle_4[(start+1)/4-1].w < EURUSD_candle_4[(start+1)/4-1-period].w){
        USD[start][0].w += 1;
    }
    if (EURUSD_candle_5[(start+1)/5-1].w > EURUSD_candle_5[(start+1)/5-1-period].w){
        EUR[start][1].x += 1;
    }
    else if (EURUSD_candle_5[(start+1)/5-1].w < EURUSD_candle_5[(start+1)/5-1-period].w){
        USD[start][1].x += 1;
    }
    if (EURUSD_candle_10[(start+1)/10-1].w > EURUSD_candle_10[(start+1)/10-1-period].w){
        EUR[start][1].y += 1;
    }
    else if (EURUSD_candle_10[(start+1)/10-1].w < EURUSD_candle_10[(start+1)/10-1-period].w){
        USD[start][1].y += 1;
    }
    if (EURUSD_candle_15[(start+1)/15-1].w > EURUSD_candle_15[(start+1)/15-1-period].w){
        EUR[start][1].z += 1;
    }
    else if (EURUSD_candle_15[(start+1)/15-1].w < EURUSD_candle_15[(start+1)/15-1-period].w){
        USD[start][1].z += 1;
    }
    if (EURUSD_candle_30[(start+1)/30-1].w > EURUSD_candle_30[(start+1)/30-1-period].w){
        EUR[start][1].w += 1;
    }
    else if (EURUSD_candle_30[(start+1)/30-1].w < EURUSD_candle_30[(start+1)/30-1-period].w){
        USD[start][1].w += 1;
    }
    if (EURUSD_candle_45[(start+1)/45-1].w > EURUSD_candle_45[(start+1)/45-1-period].w){
        EUR[start][2].x += 1;
    }
    else if (EURUSD_candle_45[(start+1)/45-1].w < EURUSD_candle_45[(start+1)/45-1-period].w){
        USD[start][2].x += 1;
    }
    if (EURUSD_candle_60[(start+1)/60-1].w > EURUSD_candle_60[(start+1)/60-1-period].w){
        EUR[start][2].y += 1;
    }
    else if (EURUSD_candle_60[(start+1)/60-1].w < EURUSD_candle_60[(start+1)/60-1-period].w){
        USD[start][2].y += 1;
    }
    if (EURUSD_candle_120[(start+1)/120-1].w > EURUSD_candle_120[(start+1)/120-1-period].w){
        EUR[start][2].z += 1;
    }
    else if (EURUSD_candle_120[(start+1)/120-1].w < EURUSD_candle_120[(start+1)/120-1-period].w){
        USD[start][2].z += 1;
    }
    if (EURUSD_candle_180[(start+1)/180-1].w > EURUSD_candle_180[(start+1)/180-1-period].w){
        EUR[start][2].w += 1;
    }
    else if (EURUSD_candle_180[(start+1)/180-1].w < EURUSD_candle_180[(start+1)/180-1-period].w){
        USD[start][2].w += 1;
    }
    if (EURUSD_candle_240[(start+1)/240-1].w > EURUSD_candle_240[(start+1)/240-1-period].w){
        EUR[start][3].x += 1;
    }
    else if (EURUSD_candle_240[(start+1)/240-1].w < EURUSD_candle_240[(start+1)/240-1-period].w){
        USD[start][3].x += 1;
    }
    if (EURUSD_candle_360[(start+1)/360-1].w > EURUSD_candle_360[(start+1)/360-1-period].w){
        EUR[start][3].y += 1;
    }
    else if (EURUSD_candle_360[(start+1)/360-1].w < EURUSD_candle_360[(start+1)/360-1-period].w){
        USD[start][3].y += 1;
    }
    if (EURUSD_candle_720[(start+1)/720-1].w > EURUSD_candle_720[(start+1)/720-1-period].w){
        EUR[start][3].z += 1;
    }
    else if (EURUSD_candle_720[(start+1)/720-1].w < EURUSD_candle_720[(start+1)/720-1-period].w){
        USD[start][3].z += 1;
    }
    if (EURUSD_candle_1440[(start+1)/1440-1].w > EURUSD_candle_1440[(start+1)/1440-1-period].w){
        EUR[start][3].w += 1;
    }
    else if (EURUSD_candle_1440[(start+1)/1440-1].w < EURUSD_candle_1440[(start+1)/1440-1-period].w){
        USD[start][3].w += 1;
    }
    // GBPAUD
    if (GBPAUD_candle_1[(start+1)/1-1].w > GBPAUD_candle_1[(start+1)/1-1-period].w){
        GBP[start][0].x += 1;
    }
    else if (GBPAUD_candle_1[(start+1)/1-1].w < GBPAUD_candle_1[(start+1)/1-1-period].w){
        AUD[start][0].x += 1;
    }
    if (GBPAUD_candle_2[(start+1)/2-1].w > GBPAUD_candle_2[(start+1)/2-1-period].w){
        GBP[start][0].y += 1;
    }
    else if (GBPAUD_candle_2[(start+1)/2-1].w < GBPAUD_candle_2[(start+1)/2-1-period].w){
        AUD[start][0].y += 1;
    }
    if (GBPAUD_candle_3[(start+1)/3-1].w > GBPAUD_candle_3[(start+1)/3-1-period].w){
        GBP[start][0].z += 1;
    }
    else if (GBPAUD_candle_3[(start+1)/3-1].w < GBPAUD_candle_3[(start+1)/3-1-period].w){
        AUD[start][0].z += 1;
    }
    if (GBPAUD_candle_4[(start+1)/4-1].w > GBPAUD_candle_4[(start+1)/4-1-period].w){
        GBP[start][0].w += 1;
    }
    else if (GBPAUD_candle_4[(start+1)/4-1].w < GBPAUD_candle_4[(start+1)/4-1-period].w){
        AUD[start][0].w += 1;
    }
    if (GBPAUD_candle_5[(start+1)/5-1].w > GBPAUD_candle_5[(start+1)/5-1-period].w){
        GBP[start][1].x += 1;
    }
    else if (GBPAUD_candle_5[(start+1)/5-1].w < GBPAUD_candle_5[(start+1)/5-1-period].w){
        AUD[start][1].x += 1;
    }
    if (GBPAUD_candle_10[(start+1)/10-1].w > GBPAUD_candle_10[(start+1)/10-1-period].w){
        GBP[start][1].y += 1;
    }
    else if (GBPAUD_candle_10[(start+1)/10-1].w < GBPAUD_candle_10[(start+1)/10-1-period].w){
        AUD[start][1].y += 1;
    }
    if (GBPAUD_candle_15[(start+1)/15-1].w > GBPAUD_candle_15[(start+1)/15-1-period].w){
        GBP[start][1].z += 1;
    }
    else if (GBPAUD_candle_15[(start+1)/15-1].w < GBPAUD_candle_15[(start+1)/15-1-period].w){
        AUD[start][1].z += 1;
    }
    if (GBPAUD_candle_30[(start+1)/30-1].w > GBPAUD_candle_30[(start+1)/30-1-period].w){
        GBP[start][1].w += 1;
    }
    else if (GBPAUD_candle_30[(start+1)/30-1].w < GBPAUD_candle_30[(start+1)/30-1-period].w){
        AUD[start][1].w += 1;
    }
    if (GBPAUD_candle_45[(start+1)/45-1].w > GBPAUD_candle_45[(start+1)/45-1-period].w){
        GBP[start][2].x += 1;
    }
    else if (GBPAUD_candle_45[(start+1)/45-1].w < GBPAUD_candle_45[(start+1)/45-1-period].w){
        AUD[start][2].x += 1;
    }
    if (GBPAUD_candle_60[(start+1)/60-1].w > GBPAUD_candle_60[(start+1)/60-1-period].w){
        GBP[start][2].y += 1;
    }
    else if (GBPAUD_candle_60[(start+1)/60-1].w < GBPAUD_candle_60[(start+1)/60-1-period].w){
        AUD[start][2].y += 1;
    }
    if (GBPAUD_candle_120[(start+1)/120-1].w > GBPAUD_candle_120[(start+1)/120-1-period].w){
        GBP[start][2].z += 1;
    }
    else if (GBPAUD_candle_120[(start+1)/120-1].w < GBPAUD_candle_120[(start+1)/120-1-period].w){
        AUD[start][2].z += 1;
    }
    if (GBPAUD_candle_180[(start+1)/180-1].w > GBPAUD_candle_180[(start+1)/180-1-period].w){
        GBP[start][2].w += 1;
    }
    else if (GBPAUD_candle_180[(start+1)/180-1].w < GBPAUD_candle_180[(start+1)/180-1-period].w){
        AUD[start][2].w += 1;
    }
    if (GBPAUD_candle_240[(start+1)/240-1].w > GBPAUD_candle_240[(start+1)/240-1-period].w){
        GBP[start][3].x += 1;
    }
    else if (GBPAUD_candle_240[(start+1)/240-1].w < GBPAUD_candle_240[(start+1)/240-1-period].w){
        AUD[start][3].x += 1;
    }
    if (GBPAUD_candle_360[(start+1)/360-1].w > GBPAUD_candle_360[(start+1)/360-1-period].w){
        GBP[start][3].y += 1;
    }
    else if (GBPAUD_candle_360[(start+1)/360-1].w < GBPAUD_candle_360[(start+1)/360-1-period].w){
        AUD[start][3].y += 1;
    }
    if (GBPAUD_candle_720[(start+1)/720-1].w > GBPAUD_candle_720[(start+1)/720-1-period].w){
        GBP[start][3].z += 1;
    }
    else if (GBPAUD_candle_720[(start+1)/720-1].w < GBPAUD_candle_720[(start+1)/720-1-period].w){
        AUD[start][3].z += 1;
    }
    if (GBPAUD_candle_1440[(start+1)/1440-1].w > GBPAUD_candle_1440[(start+1)/1440-1-period].w){
        GBP[start][3].w += 1;
    }
    else if (GBPAUD_candle_1440[(start+1)/1440-1].w < GBPAUD_candle_1440[(start+1)/1440-1-period].w){
        AUD[start][3].w += 1;
    }
    // GBPCAD
    if (GBPCAD_candle_1[(start+1)/1-1].w > GBPCAD_candle_1[(start+1)/1-1-period].w){
        GBP[start][0].x += 1;
    }
    else if (GBPCAD_candle_1[(start+1)/1-1].w < GBPCAD_candle_1[(start+1)/1-1-period].w){
        CAD[start][0].x += 1;
    }
    if (GBPCAD_candle_2[(start+1)/2-1].w > GBPCAD_candle_2[(start+1)/2-1-period].w){
        GBP[start][0].y += 1;
    }
    else if (GBPCAD_candle_2[(start+1)/2-1].w < GBPCAD_candle_2[(start+1)/2-1-period].w){
        CAD[start][0].y += 1;
    }
    if (GBPCAD_candle_3[(start+1)/3-1].w > GBPCAD_candle_3[(start+1)/3-1-period].w){
        GBP[start][0].z += 1;
    }
    else if (GBPCAD_candle_3[(start+1)/3-1].w < GBPCAD_candle_3[(start+1)/3-1-period].w){
        CAD[start][0].z += 1;
    }
    if (GBPCAD_candle_4[(start+1)/4-1].w > GBPCAD_candle_4[(start+1)/4-1-period].w){
        GBP[start][0].w += 1;
    }
    else if (GBPCAD_candle_4[(start+1)/4-1].w < GBPCAD_candle_4[(start+1)/4-1-period].w){
        CAD[start][0].w += 1;
    }
    if (GBPCAD_candle_5[(start+1)/5-1].w > GBPCAD_candle_5[(start+1)/5-1-period].w){
        GBP[start][1].x += 1;
    }
    else if (GBPCAD_candle_5[(start+1)/5-1].w < GBPCAD_candle_5[(start+1)/5-1-period].w){
        CAD[start][1].x += 1;
    }
    if (GBPCAD_candle_10[(start+1)/10-1].w > GBPCAD_candle_10[(start+1)/10-1-period].w){
        GBP[start][1].y += 1;
    }
    else if (GBPCAD_candle_10[(start+1)/10-1].w < GBPCAD_candle_10[(start+1)/10-1-period].w){
        CAD[start][1].y += 1;
    }
    if (GBPCAD_candle_15[(start+1)/15-1].w > GBPCAD_candle_15[(start+1)/15-1-period].w){
        GBP[start][1].z += 1;
    }
    else if (GBPCAD_candle_15[(start+1)/15-1].w < GBPCAD_candle_15[(start+1)/15-1-period].w){
        CAD[start][1].z += 1;
    }
    if (GBPCAD_candle_30[(start+1)/30-1].w > GBPCAD_candle_30[(start+1)/30-1-period].w){
        GBP[start][1].w += 1;
    }
    else if (GBPCAD_candle_30[(start+1)/30-1].w < GBPCAD_candle_30[(start+1)/30-1-period].w){
        CAD[start][1].w += 1;
    }
    if (GBPCAD_candle_45[(start+1)/45-1].w > GBPCAD_candle_45[(start+1)/45-1-period].w){
        GBP[start][2].x += 1;
    }
    else if (GBPCAD_candle_45[(start+1)/45-1].w < GBPCAD_candle_45[(start+1)/45-1-period].w){
        CAD[start][2].x += 1;
    }
    if (GBPCAD_candle_60[(start+1)/60-1].w > GBPCAD_candle_60[(start+1)/60-1-period].w){
        GBP[start][2].y += 1;
    }
    else if (GBPCAD_candle_60[(start+1)/60-1].w < GBPCAD_candle_60[(start+1)/60-1-period].w){
        CAD[start][2].y += 1;
    }
    if (GBPCAD_candle_120[(start+1)/120-1].w > GBPCAD_candle_120[(start+1)/120-1-period].w){
        GBP[start][2].z += 1;
    }
    else if (GBPCAD_candle_120[(start+1)/120-1].w < GBPCAD_candle_120[(start+1)/120-1-period].w){
        CAD[start][2].z += 1;
    }
    if (GBPCAD_candle_180[(start+1)/180-1].w > GBPCAD_candle_180[(start+1)/180-1-period].w){
        GBP[start][2].w += 1;
    }
    else if (GBPCAD_candle_180[(start+1)/180-1].w < GBPCAD_candle_180[(start+1)/180-1-period].w){
        CAD[start][2].w += 1;
    }
    if (GBPCAD_candle_240[(start+1)/240-1].w > GBPCAD_candle_240[(start+1)/240-1-period].w){
        GBP[start][3].x += 1;
    }
    else if (GBPCAD_candle_240[(start+1)/240-1].w < GBPCAD_candle_240[(start+1)/240-1-period].w){
        CAD[start][3].x += 1;
    }
    if (GBPCAD_candle_360[(start+1)/360-1].w > GBPCAD_candle_360[(start+1)/360-1-period].w){
        GBP[start][3].y += 1;
    }
    else if (GBPCAD_candle_360[(start+1)/360-1].w < GBPCAD_candle_360[(start+1)/360-1-period].w){
        CAD[start][3].y += 1;
    }
    if (GBPCAD_candle_720[(start+1)/720-1].w > GBPCAD_candle_720[(start+1)/720-1-period].w){
        GBP[start][3].z += 1;
    }
    else if (GBPCAD_candle_720[(start+1)/720-1].w < GBPCAD_candle_720[(start+1)/720-1-period].w){
        CAD[start][3].z += 1;
    }
    if (GBPCAD_candle_1440[(start+1)/1440-1].w > GBPCAD_candle_1440[(start+1)/1440-1-period].w){
        GBP[start][3].w += 1;
    }
    else if (GBPCAD_candle_1440[(start+1)/1440-1].w < GBPCAD_candle_1440[(start+1)/1440-1-period].w){
        CAD[start][3].w += 1;
    }
    // GBPCHF
    if (GBPCHF_candle_1[(start+1)/1-1].w > GBPCHF_candle_1[(start+1)/1-1-period].w){
        GBP[start][0].x += 1;
    }
    else if (GBPCHF_candle_1[(start+1)/1-1].w < GBPCHF_candle_1[(start+1)/1-1-period].w){
        CHF[start][0].x += 1;
    }
    if (GBPCHF_candle_2[(start+1)/2-1].w > GBPCHF_candle_2[(start+1)/2-1-period].w){
        GBP[start][0].y += 1;
    }
    else if (GBPCHF_candle_2[(start+1)/2-1].w < GBPCHF_candle_2[(start+1)/2-1-period].w){
        CHF[start][0].y += 1;
    }
    if (GBPCHF_candle_3[(start+1)/3-1].w > GBPCHF_candle_3[(start+1)/3-1-period].w){
        GBP[start][0].z += 1;
    }
    else if (GBPCHF_candle_3[(start+1)/3-1].w < GBPCHF_candle_3[(start+1)/3-1-period].w){
        CHF[start][0].z += 1;
    }
    if (GBPCHF_candle_4[(start+1)/4-1].w > GBPCHF_candle_4[(start+1)/4-1-period].w){
        GBP[start][0].w += 1;
    }
    else if (GBPCHF_candle_4[(start+1)/4-1].w < GBPCHF_candle_4[(start+1)/4-1-period].w){
        CHF[start][0].w += 1;
    }
    if (GBPCHF_candle_5[(start+1)/5-1].w > GBPCHF_candle_5[(start+1)/5-1-period].w){
        GBP[start][1].x += 1;
    }
    else if (GBPCHF_candle_5[(start+1)/5-1].w < GBPCHF_candle_5[(start+1)/5-1-period].w){
        CHF[start][1].x += 1;
    }
    if (GBPCHF_candle_10[(start+1)/10-1].w > GBPCHF_candle_10[(start+1)/10-1-period].w){
        GBP[start][1].y += 1;
    }
    else if (GBPCHF_candle_10[(start+1)/10-1].w < GBPCHF_candle_10[(start+1)/10-1-period].w){
        CHF[start][1].y += 1;
    }
    if (GBPCHF_candle_15[(start+1)/15-1].w > GBPCHF_candle_15[(start+1)/15-1-period].w){
        GBP[start][1].z += 1;
    }
    else if (GBPCHF_candle_15[(start+1)/15-1].w < GBPCHF_candle_15[(start+1)/15-1-period].w){
        CHF[start][1].z += 1;
    }
    if (GBPCHF_candle_30[(start+1)/30-1].w > GBPCHF_candle_30[(start+1)/30-1-period].w){
        GBP[start][1].w += 1;
    }
    else if (GBPCHF_candle_30[(start+1)/30-1].w < GBPCHF_candle_30[(start+1)/30-1-period].w){
        CHF[start][1].w += 1;
    }
    if (GBPCHF_candle_45[(start+1)/45-1].w > GBPCHF_candle_45[(start+1)/45-1-period].w){
        GBP[start][2].x += 1;
    }
    else if (GBPCHF_candle_45[(start+1)/45-1].w < GBPCHF_candle_45[(start+1)/45-1-period].w){
        CHF[start][2].x += 1;
    }
    if (GBPCHF_candle_60[(start+1)/60-1].w > GBPCHF_candle_60[(start+1)/60-1-period].w){
        GBP[start][2].y += 1;
    }
    else if (GBPCHF_candle_60[(start+1)/60-1].w < GBPCHF_candle_60[(start+1)/60-1-period].w){
        CHF[start][2].y += 1;
    }
    if (GBPCHF_candle_120[(start+1)/120-1].w > GBPCHF_candle_120[(start+1)/120-1-period].w){
        GBP[start][2].z += 1;
    }
    else if (GBPCHF_candle_120[(start+1)/120-1].w < GBPCHF_candle_120[(start+1)/120-1-period].w){
        CHF[start][2].z += 1;
    }
    if (GBPCHF_candle_180[(start+1)/180-1].w > GBPCHF_candle_180[(start+1)/180-1-period].w){
        GBP[start][2].w += 1;
    }
    else if (GBPCHF_candle_180[(start+1)/180-1].w < GBPCHF_candle_180[(start+1)/180-1-period].w){
        CHF[start][2].w += 1;
    }
    if (GBPCHF_candle_240[(start+1)/240-1].w > GBPCHF_candle_240[(start+1)/240-1-period].w){
        GBP[start][3].x += 1;
    }
    else if (GBPCHF_candle_240[(start+1)/240-1].w < GBPCHF_candle_240[(start+1)/240-1-period].w){
        CHF[start][3].x += 1;
    }
    if (GBPCHF_candle_360[(start+1)/360-1].w > GBPCHF_candle_360[(start+1)/360-1-period].w){
        GBP[start][3].y += 1;
    }
    else if (GBPCHF_candle_360[(start+1)/360-1].w < GBPCHF_candle_360[(start+1)/360-1-period].w){
        CHF[start][3].y += 1;
    }
    if (GBPCHF_candle_720[(start+1)/720-1].w > GBPCHF_candle_720[(start+1)/720-1-period].w){
        GBP[start][3].z += 1;
    }
    else if (GBPCHF_candle_720[(start+1)/720-1].w < GBPCHF_candle_720[(start+1)/720-1-period].w){
        CHF[start][3].z += 1;
    }
    if (GBPCHF_candle_1440[(start+1)/1440-1].w > GBPCHF_candle_1440[(start+1)/1440-1-period].w){
        GBP[start][3].w += 1;
    }
    else if (GBPCHF_candle_1440[(start+1)/1440-1].w < GBPCHF_candle_1440[(start+1)/1440-1-period].w){
        CHF[start][3].w += 1;
    }
    // GBPJPY
    if (GBPJPY_candle_1[(start+1)/1-1].w > GBPJPY_candle_1[(start+1)/1-1-period].w){
        GBP[start][0].x += 1;
    }
    else if (GBPJPY_candle_1[(start+1)/1-1].w < GBPJPY_candle_1[(start+1)/1-1-period].w){
        JPY[start][0].x += 1;
    }
    if (GBPJPY_candle_2[(start+1)/2-1].w > GBPJPY_candle_2[(start+1)/2-1-period].w){
        GBP[start][0].y += 1;
    }
    else if (GBPJPY_candle_2[(start+1)/2-1].w < GBPJPY_candle_2[(start+1)/2-1-period].w){
        JPY[start][0].y += 1;
    }
    if (GBPJPY_candle_3[(start+1)/3-1].w > GBPJPY_candle_3[(start+1)/3-1-period].w){
        GBP[start][0].z += 1;
    }
    else if (GBPJPY_candle_3[(start+1)/3-1].w < GBPJPY_candle_3[(start+1)/3-1-period].w){
        JPY[start][0].z += 1;
    }
    if (GBPJPY_candle_4[(start+1)/4-1].w > GBPJPY_candle_4[(start+1)/4-1-period].w){
        GBP[start][0].w += 1;
    }
    else if (GBPJPY_candle_4[(start+1)/4-1].w < GBPJPY_candle_4[(start+1)/4-1-period].w){
        JPY[start][0].w += 1;
    }
    if (GBPJPY_candle_5[(start+1)/5-1].w > GBPJPY_candle_5[(start+1)/5-1-period].w){
        GBP[start][1].x += 1;
    }
    else if (GBPJPY_candle_5[(start+1)/5-1].w < GBPJPY_candle_5[(start+1)/5-1-period].w){
        JPY[start][1].x += 1;
    }
    if (GBPJPY_candle_10[(start+1)/10-1].w > GBPJPY_candle_10[(start+1)/10-1-period].w){
        GBP[start][1].y += 1;
    }
    else if (GBPJPY_candle_10[(start+1)/10-1].w < GBPJPY_candle_10[(start+1)/10-1-period].w){
        JPY[start][1].y += 1;
    }
    if (GBPJPY_candle_15[(start+1)/15-1].w > GBPJPY_candle_15[(start+1)/15-1-period].w){
        GBP[start][1].z += 1;
    }
    else if (GBPJPY_candle_15[(start+1)/15-1].w < GBPJPY_candle_15[(start+1)/15-1-period].w){
        JPY[start][1].z += 1;
    }
    if (GBPJPY_candle_30[(start+1)/30-1].w > GBPJPY_candle_30[(start+1)/30-1-period].w){
        GBP[start][1].w += 1;
    }
    else if (GBPJPY_candle_30[(start+1)/30-1].w < GBPJPY_candle_30[(start+1)/30-1-period].w){
        JPY[start][1].w += 1;
    }
    if (GBPJPY_candle_45[(start+1)/45-1].w > GBPJPY_candle_45[(start+1)/45-1-period].w){
        GBP[start][2].x += 1;
    }
    else if (GBPJPY_candle_45[(start+1)/45-1].w < GBPJPY_candle_45[(start+1)/45-1-period].w){
        JPY[start][2].x += 1;
    }
    if (GBPJPY_candle_60[(start+1)/60-1].w > GBPJPY_candle_60[(start+1)/60-1-period].w){
        GBP[start][2].y += 1;
    }
    else if (GBPJPY_candle_60[(start+1)/60-1].w < GBPJPY_candle_60[(start+1)/60-1-period].w){
        JPY[start][2].y += 1;
    }
    if (GBPJPY_candle_120[(start+1)/120-1].w > GBPJPY_candle_120[(start+1)/120-1-period].w){
        GBP[start][2].z += 1;
    }
    else if (GBPJPY_candle_120[(start+1)/120-1].w < GBPJPY_candle_120[(start+1)/120-1-period].w){
        JPY[start][2].z += 1;
    }
    if (GBPJPY_candle_180[(start+1)/180-1].w > GBPJPY_candle_180[(start+1)/180-1-period].w){
        GBP[start][2].w += 1;
    }
    else if (GBPJPY_candle_180[(start+1)/180-1].w < GBPJPY_candle_180[(start+1)/180-1-period].w){
        JPY[start][2].w += 1;
    }
    if (GBPJPY_candle_240[(start+1)/240-1].w > GBPJPY_candle_240[(start+1)/240-1-period].w){
        GBP[start][3].x += 1;
    }
    else if (GBPJPY_candle_240[(start+1)/240-1].w < GBPJPY_candle_240[(start+1)/240-1-period].w){
        JPY[start][3].x += 1;
    }
    if (GBPJPY_candle_360[(start+1)/360-1].w > GBPJPY_candle_360[(start+1)/360-1-period].w){
        GBP[start][3].y += 1;
    }
    else if (GBPJPY_candle_360[(start+1)/360-1].w < GBPJPY_candle_360[(start+1)/360-1-period].w){
        JPY[start][3].y += 1;
    }
    if (GBPJPY_candle_720[(start+1)/720-1].w > GBPJPY_candle_720[(start+1)/720-1-period].w){
        GBP[start][3].z += 1;
    }
    else if (GBPJPY_candle_720[(start+1)/720-1].w < GBPJPY_candle_720[(start+1)/720-1-period].w){
        JPY[start][3].z += 1;
    }
    if (GBPJPY_candle_1440[(start+1)/1440-1].w > GBPJPY_candle_1440[(start+1)/1440-1-period].w){
        GBP[start][3].w += 1;
    }
    else if (GBPJPY_candle_1440[(start+1)/1440-1].w < GBPJPY_candle_1440[(start+1)/1440-1-period].w){
        JPY[start][3].w += 1;
    }
    // GBPUSD
    if (GBPUSD_candle_1[(start+1)/1-1].w > GBPUSD_candle_1[(start+1)/1-1-period].w){
        GBP[start][0].x += 1;
    }
    else if (GBPUSD_candle_1[(start+1)/1-1].w < GBPUSD_candle_1[(start+1)/1-1-period].w){
        USD[start][0].x += 1;
    }
    if (GBPUSD_candle_2[(start+1)/2-1].w > GBPUSD_candle_2[(start+1)/2-1-period].w){
        GBP[start][0].y += 1;
    }
    else if (GBPUSD_candle_2[(start+1)/2-1].w < GBPUSD_candle_2[(start+1)/2-1-period].w){
        USD[start][0].y += 1;
    }
    if (GBPUSD_candle_3[(start+1)/3-1].w > GBPUSD_candle_3[(start+1)/3-1-period].w){
        GBP[start][0].z += 1;
    }
    else if (GBPUSD_candle_3[(start+1)/3-1].w < GBPUSD_candle_3[(start+1)/3-1-period].w){
        USD[start][0].z += 1;
    }
    if (GBPUSD_candle_4[(start+1)/4-1].w > GBPUSD_candle_4[(start+1)/4-1-period].w){
        GBP[start][0].w += 1;
    }
    else if (GBPUSD_candle_4[(start+1)/4-1].w < GBPUSD_candle_4[(start+1)/4-1-period].w){
        USD[start][0].w += 1;
    }
    if (GBPUSD_candle_5[(start+1)/5-1].w > GBPUSD_candle_5[(start+1)/5-1-period].w){
        GBP[start][1].x += 1;
    }
    else if (GBPUSD_candle_5[(start+1)/5-1].w < GBPUSD_candle_5[(start+1)/5-1-period].w){
        USD[start][1].x += 1;
    }
    if (GBPUSD_candle_10[(start+1)/10-1].w > GBPUSD_candle_10[(start+1)/10-1-period].w){
        GBP[start][1].y += 1;
    }
    else if (GBPUSD_candle_10[(start+1)/10-1].w < GBPUSD_candle_10[(start+1)/10-1-period].w){
        USD[start][1].y += 1;
    }
    if (GBPUSD_candle_15[(start+1)/15-1].w > GBPUSD_candle_15[(start+1)/15-1-period].w){
        GBP[start][1].z += 1;
    }
    else if (GBPUSD_candle_15[(start+1)/15-1].w < GBPUSD_candle_15[(start+1)/15-1-period].w){
        USD[start][1].z += 1;
    }
    if (GBPUSD_candle_30[(start+1)/30-1].w > GBPUSD_candle_30[(start+1)/30-1-period].w){
        GBP[start][1].w += 1;
    }
    else if (GBPUSD_candle_30[(start+1)/30-1].w < GBPUSD_candle_30[(start+1)/30-1-period].w){
        USD[start][1].w += 1;
    }
    if (GBPUSD_candle_45[(start+1)/45-1].w > GBPUSD_candle_45[(start+1)/45-1-period].w){
        GBP[start][2].x += 1;
    }
    else if (GBPUSD_candle_45[(start+1)/45-1].w < GBPUSD_candle_45[(start+1)/45-1-period].w){
        USD[start][2].x += 1;
    }
    if (GBPUSD_candle_60[(start+1)/60-1].w > GBPUSD_candle_60[(start+1)/60-1-period].w){
        GBP[start][2].y += 1;
    }
    else if (GBPUSD_candle_60[(start+1)/60-1].w < GBPUSD_candle_60[(start+1)/60-1-period].w){
        USD[start][2].y += 1;
    }
    if (GBPUSD_candle_120[(start+1)/120-1].w > GBPUSD_candle_120[(start+1)/120-1-period].w){
        GBP[start][2].z += 1;
    }
    else if (GBPUSD_candle_120[(start+1)/120-1].w < GBPUSD_candle_120[(start+1)/120-1-period].w){
        USD[start][2].z += 1;
    }
    if (GBPUSD_candle_180[(start+1)/180-1].w > GBPUSD_candle_180[(start+1)/180-1-period].w){
        GBP[start][2].w += 1;
    }
    else if (GBPUSD_candle_180[(start+1)/180-1].w < GBPUSD_candle_180[(start+1)/180-1-period].w){
        USD[start][2].w += 1;
    }
    if (GBPUSD_candle_240[(start+1)/240-1].w > GBPUSD_candle_240[(start+1)/240-1-period].w){
        GBP[start][3].x += 1;
    }
    else if (GBPUSD_candle_240[(start+1)/240-1].w < GBPUSD_candle_240[(start+1)/240-1-period].w){
        USD[start][3].x += 1;
    }
    if (GBPUSD_candle_360[(start+1)/360-1].w > GBPUSD_candle_360[(start+1)/360-1-period].w){
        GBP[start][3].y += 1;
    }
    else if (GBPUSD_candle_360[(start+1)/360-1].w < GBPUSD_candle_360[(start+1)/360-1-period].w){
        USD[start][3].y += 1;
    }
    if (GBPUSD_candle_720[(start+1)/720-1].w > GBPUSD_candle_720[(start+1)/720-1-period].w){
        GBP[start][3].z += 1;
    }
    else if (GBPUSD_candle_720[(start+1)/720-1].w < GBPUSD_candle_720[(start+1)/720-1-period].w){
        USD[start][3].z += 1;
    }
    if (GBPUSD_candle_1440[(start+1)/1440-1].w > GBPUSD_candle_1440[(start+1)/1440-1-period].w){
        GBP[start][3].w += 1;
    }
    else if (GBPUSD_candle_1440[(start+1)/1440-1].w < GBPUSD_candle_1440[(start+1)/1440-1-period].w){
        USD[start][3].w += 1;
    }
    // USDCAD
    if (USDCAD_candle_1[(start+1)/1-1].w > USDCAD_candle_1[(start+1)/1-1-period].w){
        USD[start][0].x += 1;
    }
    else if (USDCAD_candle_1[(start+1)/1-1].w < USDCAD_candle_1[(start+1)/1-1-period].w){
        CAD[start][0].x += 1;
    }
    if (USDCAD_candle_2[(start+1)/2-1].w > USDCAD_candle_2[(start+1)/2-1-period].w){
        USD[start][0].y += 1;
    }
    else if (USDCAD_candle_2[(start+1)/2-1].w < USDCAD_candle_2[(start+1)/2-1-period].w){
        CAD[start][0].y += 1;
    }
    if (USDCAD_candle_3[(start+1)/3-1].w > USDCAD_candle_3[(start+1)/3-1-period].w){
        USD[start][0].z += 1;
    }
    else if (USDCAD_candle_3[(start+1)/3-1].w < USDCAD_candle_3[(start+1)/3-1-period].w){
        CAD[start][0].z += 1;
    }
    if (USDCAD_candle_4[(start+1)/4-1].w > USDCAD_candle_4[(start+1)/4-1-period].w){
        USD[start][0].w += 1;
    }
    else if (USDCAD_candle_4[(start+1)/4-1].w < USDCAD_candle_4[(start+1)/4-1-period].w){
        CAD[start][0].w += 1;
    }
    if (USDCAD_candle_5[(start+1)/5-1].w > USDCAD_candle_5[(start+1)/5-1-period].w){
        USD[start][1].x += 1;
    }
    else if (USDCAD_candle_5[(start+1)/5-1].w < USDCAD_candle_5[(start+1)/5-1-period].w){
        CAD[start][1].x += 1;
    }
    if (USDCAD_candle_10[(start+1)/10-1].w > USDCAD_candle_10[(start+1)/10-1-period].w){
        USD[start][1].y += 1;
    }
    else if (USDCAD_candle_10[(start+1)/10-1].w < USDCAD_candle_10[(start+1)/10-1-period].w){
        CAD[start][1].y += 1;
    }
    if (USDCAD_candle_15[(start+1)/15-1].w > USDCAD_candle_15[(start+1)/15-1-period].w){
        USD[start][1].z += 1;
    }
    else if (USDCAD_candle_15[(start+1)/15-1].w < USDCAD_candle_15[(start+1)/15-1-period].w){
        CAD[start][1].z += 1;
    }
    if (USDCAD_candle_30[(start+1)/30-1].w > USDCAD_candle_30[(start+1)/30-1-period].w){
        USD[start][1].w += 1;
    }
    else if (USDCAD_candle_30[(start+1)/30-1].w < USDCAD_candle_30[(start+1)/30-1-period].w){
        CAD[start][1].w += 1;
    }
    if (USDCAD_candle_45[(start+1)/45-1].w > USDCAD_candle_45[(start+1)/45-1-period].w){
        USD[start][2].x += 1;
    }
    else if (USDCAD_candle_45[(start+1)/45-1].w < USDCAD_candle_45[(start+1)/45-1-period].w){
        CAD[start][2].x += 1;
    }
    if (USDCAD_candle_60[(start+1)/60-1].w > USDCAD_candle_60[(start+1)/60-1-period].w){
        USD[start][2].y += 1;
    }
    else if (USDCAD_candle_60[(start+1)/60-1].w < USDCAD_candle_60[(start+1)/60-1-period].w){
        CAD[start][2].y += 1;
    }
    if (USDCAD_candle_120[(start+1)/120-1].w > USDCAD_candle_120[(start+1)/120-1-period].w){
        USD[start][2].z += 1;
    }
    else if (USDCAD_candle_120[(start+1)/120-1].w < USDCAD_candle_120[(start+1)/120-1-period].w){
        CAD[start][2].z += 1;
    }
    if (USDCAD_candle_180[(start+1)/180-1].w > USDCAD_candle_180[(start+1)/180-1-period].w){
        USD[start][2].w += 1;
    }
    else if (USDCAD_candle_180[(start+1)/180-1].w < USDCAD_candle_180[(start+1)/180-1-period].w){
        CAD[start][2].w += 1;
    }
    if (USDCAD_candle_240[(start+1)/240-1].w > USDCAD_candle_240[(start+1)/240-1-period].w){
        USD[start][3].x += 1;
    }
    else if (USDCAD_candle_240[(start+1)/240-1].w < USDCAD_candle_240[(start+1)/240-1-period].w){
        CAD[start][3].x += 1;
    }
    if (USDCAD_candle_360[(start+1)/360-1].w > USDCAD_candle_360[(start+1)/360-1-period].w){
        USD[start][3].y += 1;
    }
    else if (USDCAD_candle_360[(start+1)/360-1].w < USDCAD_candle_360[(start+1)/360-1-period].w){
        CAD[start][3].y += 1;
    }
    if (USDCAD_candle_720[(start+1)/720-1].w > USDCAD_candle_720[(start+1)/720-1-period].w){
        USD[start][3].z += 1;
    }
    else if (USDCAD_candle_720[(start+1)/720-1].w < USDCAD_candle_720[(start+1)/720-1-period].w){
        CAD[start][3].z += 1;
    }
    if (USDCAD_candle_1440[(start+1)/1440-1].w > USDCAD_candle_1440[(start+1)/1440-1-period].w){
        USD[start][3].w += 1;
    }
    else if (USDCAD_candle_1440[(start+1)/1440-1].w < USDCAD_candle_1440[(start+1)/1440-1-period].w){
        CAD[start][3].w += 1;
    }
    // USDCHF
    if (USDCHF_candle_1[(start+1)/1-1].w > USDCHF_candle_1[(start+1)/1-1-period].w){
        USD[start][0].x += 1;
    }
    else if (USDCHF_candle_1[(start+1)/1-1].w < USDCHF_candle_1[(start+1)/1-1-period].w){
        CHF[start][0].x += 1;
    }
    if (USDCHF_candle_2[(start+1)/2-1].w > USDCHF_candle_2[(start+1)/2-1-period].w){
        USD[start][0].y += 1;
    }
    else if (USDCHF_candle_2[(start+1)/2-1].w < USDCHF_candle_2[(start+1)/2-1-period].w){
        CHF[start][0].y += 1;
    }
    if (USDCHF_candle_3[(start+1)/3-1].w > USDCHF_candle_3[(start+1)/3-1-period].w){
        USD[start][0].z += 1;
    }
    else if (USDCHF_candle_3[(start+1)/3-1].w < USDCHF_candle_3[(start+1)/3-1-period].w){
        CHF[start][0].z += 1;
    }
    if (USDCHF_candle_4[(start+1)/4-1].w > USDCHF_candle_4[(start+1)/4-1-period].w){
        USD[start][0].w += 1;
    }
    else if (USDCHF_candle_4[(start+1)/4-1].w < USDCHF_candle_4[(start+1)/4-1-period].w){
        CHF[start][0].w += 1;
    }
    if (USDCHF_candle_5[(start+1)/5-1].w > USDCHF_candle_5[(start+1)/5-1-period].w){
        USD[start][1].x += 1;
    }
    else if (USDCHF_candle_5[(start+1)/5-1].w < USDCHF_candle_5[(start+1)/5-1-period].w){
        CHF[start][1].x += 1;
    }
    if (USDCHF_candle_10[(start+1)/10-1].w > USDCHF_candle_10[(start+1)/10-1-period].w){
        USD[start][1].y += 1;
    }
    else if (USDCHF_candle_10[(start+1)/10-1].w < USDCHF_candle_10[(start+1)/10-1-period].w){
        CHF[start][1].y += 1;
    }
    if (USDCHF_candle_15[(start+1)/15-1].w > USDCHF_candle_15[(start+1)/15-1-period].w){
        USD[start][1].z += 1;
    }
    else if (USDCHF_candle_15[(start+1)/15-1].w < USDCHF_candle_15[(start+1)/15-1-period].w){
        CHF[start][1].z += 1;
    }
    if (USDCHF_candle_30[(start+1)/30-1].w > USDCHF_candle_30[(start+1)/30-1-period].w){
        USD[start][1].w += 1;
    }
    else if (USDCHF_candle_30[(start+1)/30-1].w < USDCHF_candle_30[(start+1)/30-1-period].w){
        CHF[start][1].w += 1;
    }
    if (USDCHF_candle_45[(start+1)/45-1].w > USDCHF_candle_45[(start+1)/45-1-period].w){
        USD[start][2].x += 1;
    }
    else if (USDCHF_candle_45[(start+1)/45-1].w < USDCHF_candle_45[(start+1)/45-1-period].w){
        CHF[start][2].x += 1;
    }
    if (USDCHF_candle_60[(start+1)/60-1].w > USDCHF_candle_60[(start+1)/60-1-period].w){
        USD[start][2].y += 1;
    }
    else if (USDCHF_candle_60[(start+1)/60-1].w < USDCHF_candle_60[(start+1)/60-1-period].w){
        CHF[start][2].y += 1;
    }
    if (USDCHF_candle_120[(start+1)/120-1].w > USDCHF_candle_120[(start+1)/120-1-period].w){
        USD[start][2].z += 1;
    }
    else if (USDCHF_candle_120[(start+1)/120-1].w < USDCHF_candle_120[(start+1)/120-1-period].w){
        CHF[start][2].z += 1;
    }
    if (USDCHF_candle_180[(start+1)/180-1].w > USDCHF_candle_180[(start+1)/180-1-period].w){
        USD[start][2].w += 1;
    }
    else if (USDCHF_candle_180[(start+1)/180-1].w < USDCHF_candle_180[(start+1)/180-1-period].w){
        CHF[start][2].w += 1;
    }
    if (USDCHF_candle_240[(start+1)/240-1].w > USDCHF_candle_240[(start+1)/240-1-period].w){
        USD[start][3].x += 1;
    }
    else if (USDCHF_candle_240[(start+1)/240-1].w < USDCHF_candle_240[(start+1)/240-1-period].w){
        CHF[start][3].x += 1;
    }
    if (USDCHF_candle_360[(start+1)/360-1].w > USDCHF_candle_360[(start+1)/360-1-period].w){
        USD[start][3].y += 1;
    }
    else if (USDCHF_candle_360[(start+1)/360-1].w < USDCHF_candle_360[(start+1)/360-1-period].w){
        CHF[start][3].y += 1;
    }
    if (USDCHF_candle_720[(start+1)/720-1].w > USDCHF_candle_720[(start+1)/720-1-period].w){
        USD[start][3].z += 1;
    }
    else if (USDCHF_candle_720[(start+1)/720-1].w < USDCHF_candle_720[(start+1)/720-1-period].w){
        CHF[start][3].z += 1;
    }
    if (USDCHF_candle_1440[(start+1)/1440-1].w > USDCHF_candle_1440[(start+1)/1440-1-period].w){
        USD[start][3].w += 1;
    }
    else if (USDCHF_candle_1440[(start+1)/1440-1].w < USDCHF_candle_1440[(start+1)/1440-1-period].w){
        CHF[start][3].w += 1;
    }
    // USDJPY
    if (USDJPY_candle_1[(start+1)/1-1].w > USDJPY_candle_1[(start+1)/1-1-period].w){
        USD[start][0].x += 1;
    }
    else if (USDJPY_candle_1[(start+1)/1-1].w < USDJPY_candle_1[(start+1)/1-1-period].w){
        JPY[start][0].x += 1;
    }
    if (USDJPY_candle_2[(start+1)/2-1].w > USDJPY_candle_2[(start+1)/2-1-period].w){
        USD[start][0].y += 1;
    }
    else if (USDJPY_candle_2[(start+1)/2-1].w < USDJPY_candle_2[(start+1)/2-1-period].w){
        JPY[start][0].y += 1;
    }
    if (USDJPY_candle_3[(start+1)/3-1].w > USDJPY_candle_3[(start+1)/3-1-period].w){
        USD[start][0].z += 1;
    }
    else if (USDJPY_candle_3[(start+1)/3-1].w < USDJPY_candle_3[(start+1)/3-1-period].w){
        JPY[start][0].z += 1;
    }
    if (USDJPY_candle_4[(start+1)/4-1].w > USDJPY_candle_4[(start+1)/4-1-period].w){
        USD[start][0].w += 1;
    }
    else if (USDJPY_candle_4[(start+1)/4-1].w < USDJPY_candle_4[(start+1)/4-1-period].w){
        JPY[start][0].w += 1;
    }
    if (USDJPY_candle_5[(start+1)/5-1].w > USDJPY_candle_5[(start+1)/5-1-period].w){
        USD[start][1].x += 1;
    }
    else if (USDJPY_candle_5[(start+1)/5-1].w < USDJPY_candle_5[(start+1)/5-1-period].w){
        JPY[start][1].x += 1;
    }
    if (USDJPY_candle_10[(start+1)/10-1].w > USDJPY_candle_10[(start+1)/10-1-period].w){
        USD[start][1].y += 1;
    }
    else if (USDJPY_candle_10[(start+1)/10-1].w < USDJPY_candle_10[(start+1)/10-1-period].w){
        JPY[start][1].y += 1;
    }
    if (USDJPY_candle_15[(start+1)/15-1].w > USDJPY_candle_15[(start+1)/15-1-period].w){
        USD[start][1].z += 1;
    }
    else if (USDJPY_candle_15[(start+1)/15-1].w < USDJPY_candle_15[(start+1)/15-1-period].w){
        JPY[start][1].z += 1;
    }
    if (USDJPY_candle_30[(start+1)/30-1].w > USDJPY_candle_30[(start+1)/30-1-period].w){
        USD[start][1].w += 1;
    }
    else if (USDJPY_candle_30[(start+1)/30-1].w < USDJPY_candle_30[(start+1)/30-1-period].w){
        JPY[start][1].w += 1;
    }
    if (USDJPY_candle_45[(start+1)/45-1].w > USDJPY_candle_45[(start+1)/45-1-period].w){
        USD[start][2].x += 1;
    }
    else if (USDJPY_candle_45[(start+1)/45-1].w < USDJPY_candle_45[(start+1)/45-1-period].w){
        JPY[start][2].x += 1;
    }
    if (USDJPY_candle_60[(start+1)/60-1].w > USDJPY_candle_60[(start+1)/60-1-period].w){
        USD[start][2].y += 1;
    }
    else if (USDJPY_candle_60[(start+1)/60-1].w < USDJPY_candle_60[(start+1)/60-1-period].w){
        JPY[start][2].y += 1;
    }
    if (USDJPY_candle_120[(start+1)/120-1].w > USDJPY_candle_120[(start+1)/120-1-period].w){
        USD[start][2].z += 1;
    }
    else if (USDJPY_candle_120[(start+1)/120-1].w < USDJPY_candle_120[(start+1)/120-1-period].w){
        JPY[start][2].z += 1;
    }
    if (USDJPY_candle_180[(start+1)/180-1].w > USDJPY_candle_180[(start+1)/180-1-period].w){
        USD[start][2].w += 1;
    }
    else if (USDJPY_candle_180[(start+1)/180-1].w < USDJPY_candle_180[(start+1)/180-1-period].w){
        JPY[start][2].w += 1;
    }
    if (USDJPY_candle_240[(start+1)/240-1].w > USDJPY_candle_240[(start+1)/240-1-period].w){
        USD[start][3].x += 1;
    }
    else if (USDJPY_candle_240[(start+1)/240-1].w < USDJPY_candle_240[(start+1)/240-1-period].w){
        JPY[start][3].x += 1;
    }
    if (USDJPY_candle_360[(start+1)/360-1].w > USDJPY_candle_360[(start+1)/360-1-period].w){
        USD[start][3].y += 1;
    }
    else if (USDJPY_candle_360[(start+1)/360-1].w < USDJPY_candle_360[(start+1)/360-1-period].w){
        JPY[start][3].y += 1;
    }
    if (USDJPY_candle_720[(start+1)/720-1].w > USDJPY_candle_720[(start+1)/720-1-period].w){
        USD[start][3].z += 1;
    }
    else if (USDJPY_candle_720[(start+1)/720-1].w < USDJPY_candle_720[(start+1)/720-1-period].w){
        JPY[start][3].z += 1;
    }
    if (USDJPY_candle_1440[(start+1)/1440-1].w > USDJPY_candle_1440[(start+1)/1440-1-period].w){
        USD[start][3].w += 1;
    }
    else if (USDJPY_candle_1440[(start+1)/1440-1].w < USDJPY_candle_1440[(start+1)/1440-1-period].w){
        JPY[start][3].w += 1;
    }
    


}

void main() {
    Strength(index, 4);

}
