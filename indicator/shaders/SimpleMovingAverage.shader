#version 460 compatibility

/*
This shader computes simple moving average,
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
layout(local_size_x=1, local_size_y=1, local_size_z=1) in;

uniform int anchor;

uint gid = gl_GlobalInvocationID.x;
int index = int(gid) + anchor;

float SMA(int case_id, int start, int length){
    float add_up;
    add_up = 0.0;
    if (case_id == 0){
        for(int i=0; i<length; ++i){
            add_up += AUDCAD_candle_1[start-i].w;
        }
    }
    if (case_id == 1){
        for(int i=0; i<length; ++i){
            add_up += AUDCHF_candle_1[start-i].w;
        }
    }
    if (case_id == 2){
        for(int i=0; i<length; ++i){
            add_up += AUDJPY_candle_1[start-i].w;
        }
    }
    if (case_id == 3){
        for(int i=0; i<length; ++i){
            add_up += AUDUSD_candle_1[start-i].w;
        }
    }
    if (case_id == 4){
        for(int i=0; i<length; ++i){
            add_up += CADCHF_candle_1[start-i].w;
        }
    }
    if (case_id == 5){
        for(int i=0; i<length; ++i){
            add_up += CADJPY_candle_1[start-i].w;
        }
    }
    if (case_id == 6){
        for(int i=0; i<length; ++i){
            add_up += CHFJPY_candle_1[start-i].w;
        }
    }
    if (case_id == 7){
        for(int i=0; i<length; ++i){
            add_up += EURAUD_candle_1[start-i].w;
        }
    }
    if (case_id == 8){
        for(int i=0; i<length; ++i){
            add_up += EURCAD_candle_1[start-i].w;
        }
    }
    if (case_id == 9){
        for(int i=0; i<length; ++i){
            add_up += EURCHF_candle_1[start-i].w;
        }
    }
    if (case_id == 10){
        for(int i=0; i<length; ++i){
            add_up += EURGBP_candle_1[start-i].w;
        }
    }
    if (case_id == 11){
        for(int i=0; i<length; ++i){
            add_up += EURJPY_candle_1[start-i].w;
        }
    }
    if (case_id == 12){
        for(int i=0; i<length; ++i){
            add_up += EURUSD_candle_1[start-i].w;
        }
    }
    if (case_id == 13){
        for(int i=0; i<length; ++i){
            add_up += GBPAUD_candle_1[start-i].w;
        }
    }
    if (case_id == 14){
        for(int i=0; i<length; ++i){
            add_up += GBPCAD_candle_1[start-i].w;
        }
    }
    if (case_id == 15){
        for(int i=0; i<length; ++i){
            add_up += GBPCHF_candle_1[start-i].w;
        }
    }
    if (case_id == 16){
        for(int i=0; i<length; ++i){
            add_up += GBPJPY_candle_1[start-i].w;
        }
    }
    if (case_id == 17){
        for(int i=0; i<length; ++i){
            add_up += GBPUSD_candle_1[start-i].w;
        }
    }
    if (case_id == 18){
        for(int i=0; i<length; ++i){
            add_up += USDCAD_candle_1[start-i].w;
        }
    }
    if (case_id == 19){
        for(int i=0; i<length; ++i){
            add_up += USDCHF_candle_1[start-i].w;
        }
    }
    if (case_id == 20){
        for(int i=0; i<length; ++i){
            add_up += USDJPY_candle_1[start-i].w;
        }
    }

    return add_up/length;
}

float EMA(int case_id, int start, int length){
    // start need to be __ge__ than 2*length-1
    float add_up;
    float k;
    float temp[2000];
    add_up = 0.0;
    k = 2.0/(length+1);

    if (case_id == 0){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*AUDCAD_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*AUDCAD_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 1){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*AUDCHF_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*AUDCHF_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 2){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*AUDJPY_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*AUDJPY_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 3){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*AUDUSD_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*AUDUSD_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 4){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*CADCHF_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*CADCHF_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 5){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*CADJPY_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*CADJPY_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 6){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*CHFJPY_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*CHFJPY_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 7){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*EURAUD_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*EURAUD_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 8){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*EURCAD_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*EURCAD_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 9){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*EURCHF_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*EURCHF_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 10){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*EURGBP_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*EURGBP_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 11){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*EURJPY_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*EURJPY_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 12){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*EURUSD_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*EURUSD_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 13){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*GBPAUD_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*GBPAUD_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 14){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*GBPCAD_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*GBPCAD_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 15){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*GBPCHF_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*GBPCHF_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 16){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*GBPJPY_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*GBPJPY_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 17){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*GBPUSD_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*GBPUSD_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 18){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*USDCAD_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*USDCAD_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 19){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*USDCHF_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*USDCHF_candle_1[start-length+1+i].w;
        }
    }
    if (case_id == 20){
        temp[0] = (1-k)*SMA(case_id, start-length, length) + k*USDJPY_candle_1[start-length+1].w;
        for(int i=1; i<length; ++i){
            temp[i] = (1-k)*temp[i-1] + k*USDJPY_candle_1[start-length+1+i].w;
        }
    }

    return temp[length-1];
}

float WMA(int case_id, int start, int length){
    //linear weighted moving average
    float add_up;
    add_up = 0.0;
    if (case_id == 0){
        for(int i=0; i<length; ++i){
            add_up += AUDCAD_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 1){
        for(int i=0; i<length; ++i){
            add_up += AUDCHF_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 2){
        for(int i=0; i<length; ++i){
            add_up += AUDJPY_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 3){
        for(int i=0; i<length; ++i){
            add_up += AUDUSD_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 4){
        for(int i=0; i<length; ++i){
            add_up += CADCHF_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 5){
        for(int i=0; i<length; ++i){
            add_up += CADJPY_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 6){
        for(int i=0; i<length; ++i){
            add_up += CHFJPY_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 7){
        for(int i=0; i<length; ++i){
            add_up += EURAUD_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 8){
        for(int i=0; i<length; ++i){
            add_up += EURCAD_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 9){
        for(int i=0; i<length; ++i){
            add_up += EURCHF_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 10){
        for(int i=0; i<length; ++i){
            add_up += EURGBP_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 11){
        for(int i=0; i<length; ++i){
            add_up += EURJPY_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 12){
        for(int i=0; i<length; ++i){
            add_up += EURUSD_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 13){
        for(int i=0; i<length; ++i){
            add_up += GBPAUD_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 14){
        for(int i=0; i<length; ++i){
            add_up += GBPCAD_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 15){
        for(int i=0; i<length; ++i){
            add_up += GBPCHF_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 16){
        for(int i=0; i<length; ++i){
            add_up += GBPJPY_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 17){
        for(int i=0; i<length; ++i){
            add_up += GBPUSD_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 18){
        for(int i=0; i<length; ++i){
            add_up += USDCAD_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 19){
        for(int i=0; i<length; ++i){
            add_up += USDCHF_candle_1[start-i].w*(length-i);
        }
    }
    if (case_id == 20){
        for(int i=0; i<length; ++i){
            add_up += USDJPY_candle_1[start-i].w*(length-i);
        }
    }

    return add_up/((1+length)*length/2);
}

float VWMA(int case_id, int start, int length){
    //linear weighted * varitivity moving average
    float add_up;
    float varitivity_add_up;
    float weight_add_up;
    float mean;
    mean = SMA(case_id, start, length);
    if (case_id == 0){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(AUDCAD_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(AUDCAD_candle_1[start-i].w-mean)*(length-i) * AUDCAD_candle_1[start-i].w;
        }
    }
    if (case_id == 1){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(AUDCHF_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(AUDCHF_candle_1[start-i].w-mean)*(length-i) * AUDCHF_candle_1[start-i].w;
        }
    }
    if (case_id == 2){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(AUDJPY_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(AUDJPY_candle_1[start-i].w-mean)*(length-i) * AUDJPY_candle_1[start-i].w;
        }
    }
    if (case_id == 3){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(AUDUSD_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(AUDUSD_candle_1[start-i].w-mean)*(length-i) * AUDUSD_candle_1[start-i].w;
        }
    }
    if (case_id == 4){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(CADCHF_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(CADCHF_candle_1[start-i].w-mean)*(length-i) * CADCHF_candle_1[start-i].w;
        }
    }
    if (case_id == 5){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(CADJPY_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(CADJPY_candle_1[start-i].w-mean)*(length-i) * CADJPY_candle_1[start-i].w;
        }
    }
    if (case_id == 6){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(CHFJPY_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(CHFJPY_candle_1[start-i].w-mean)*(length-i) * CHFJPY_candle_1[start-i].w;
        }
    }
    if (case_id == 7){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(EURAUD_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(EURAUD_candle_1[start-i].w-mean)*(length-i) * EURAUD_candle_1[start-i].w;
        }
    }
    if (case_id == 8){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(EURCAD_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(EURCAD_candle_1[start-i].w-mean)*(length-i) * EURCAD_candle_1[start-i].w;
        }
    }
    if (case_id == 9){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(EURCHF_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(EURCHF_candle_1[start-i].w-mean)*(length-i) * EURCHF_candle_1[start-i].w;
        }
    }
    if (case_id == 10){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(EURGBP_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(EURGBP_candle_1[start-i].w-mean)*(length-i) * EURGBP_candle_1[start-i].w;
        }
    }
    if (case_id == 11){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(EURJPY_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(EURJPY_candle_1[start-i].w-mean)*(length-i) * EURJPY_candle_1[start-i].w;
        }
    }
    if (case_id == 12){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(EURUSD_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(EURUSD_candle_1[start-i].w-mean)*(length-i) * EURUSD_candle_1[start-i].w;
        }
    }
    if (case_id == 13){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(GBPAUD_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(GBPAUD_candle_1[start-i].w-mean)*(length-i) * GBPAUD_candle_1[start-i].w;
        }
    }
    if (case_id == 14){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(GBPCAD_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(GBPCAD_candle_1[start-i].w-mean)*(length-i) * GBPCAD_candle_1[start-i].w;
        }
    }
    if (case_id == 15){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(GBPCHF_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(GBPCHF_candle_1[start-i].w-mean)*(length-i) * GBPCHF_candle_1[start-i].w;
        }
    }
    if (case_id == 16){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(GBPJPY_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(GBPJPY_candle_1[start-i].w-mean)*(length-i) * GBPJPY_candle_1[start-i].w;
        }
    }
    if (case_id == 17){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(GBPUSD_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(GBPUSD_candle_1[start-i].w-mean)*(length-i) * GBPUSD_candle_1[start-i].w;
        }
    }
    if (case_id == 18){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(USDCAD_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(USDCAD_candle_1[start-i].w-mean)*(length-i) * USDCAD_candle_1[start-i].w;
        }
    }
    if (case_id == 19){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(USDCHF_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(USDCHF_candle_1[start-i].w-mean)*(length-i) * USDCHF_candle_1[start-i].w;
        }
    }
    if (case_id == 20){
        for(int i=0; i<length; ++i){
            varitivity_add_up += abs(USDJPY_candle_1[start-i].w-mean)*(length-i);
            add_up += abs(USDJPY_candle_1[start-i].w-mean)*(length-i) * USDJPY_candle_1[start-i].w;
        }
    }
    return add_up/varitivity_add_up;
}

void simple_moving_average(int start){
    int m1;
    int m2;
    int m3;
    int m4;
    int m5;
    int m10;
    int m15;
    int m30;
    int m45;
    int m60;
    int m120;
    int m180;
    int m240;
    int m360;
    int m720;
    int m1440;
    m1    = max(start, -1+1);
    m2    = max(start, -1+2);
    m3    = max(start, -1+3);
    m4    = max(start, -1+4);
    m5    = max(start, -1+5);
    m10   = max(start, -1+10);
    m15   = max(start, -1+15);
    m30   = max(start, -1+30);
    m45   = max(start, -1+45);
    m60   = max(start, -1+60);
    m120  = max(start, -1+120);
    m180  = max(start, -1+180);
    m240  = max(start, -1+240);
    m360  = max(start, -1+360);
    m720  = max(start, -1+720);
    m1440 = max(start, -1+1440);

    AUDCAD[start][0].x = SMA(0, m1    , 1);
    AUDCAD[start][0].y = SMA(0, m2    , 2);
    AUDCAD[start][0].z = SMA(0, m3    , 3);
    AUDCAD[start][0].w = SMA(0, m4    , 4);
    AUDCAD[start][1].x = SMA(0, m5    , 5);
    AUDCAD[start][1].y = SMA(0, m10   , 10);
    AUDCAD[start][1].z = SMA(0, m15   , 15);
    AUDCAD[start][1].w = SMA(0, m30   , 30);
    AUDCAD[start][2].x = SMA(0, m45   , 45);
    AUDCAD[start][2].y = SMA(0, m60   , 60);
    AUDCAD[start][2].z = SMA(0, m120  , 120);
    AUDCAD[start][2].w = SMA(0, m180  , 180);
    AUDCAD[start][3].x = SMA(0, m240  , 240);
    AUDCAD[start][3].y = SMA(0, m360  , 360);
    AUDCAD[start][3].z = SMA(0, m720  , 720);
    AUDCAD[start][3].w = SMA(0, m1440 , 1440);

    AUDCHF[start][0].x = SMA(1, m1    , 1);
    AUDCHF[start][0].y = SMA(1, m2    , 2);
    AUDCHF[start][0].z = SMA(1, m3    , 3);
    AUDCHF[start][0].w = SMA(1, m4    , 4);
    AUDCHF[start][1].x = SMA(1, m5    , 5);
    AUDCHF[start][1].y = SMA(1, m10   , 10);
    AUDCHF[start][1].z = SMA(1, m15   , 15);
    AUDCHF[start][1].w = SMA(1, m30   , 30);
    AUDCHF[start][2].x = SMA(1, m45   , 45);
    AUDCHF[start][2].y = SMA(1, m60   , 60);
    AUDCHF[start][2].z = SMA(1, m120  , 120);
    AUDCHF[start][2].w = SMA(1, m180  , 180);
    AUDCHF[start][3].x = SMA(1, m240  , 240);
    AUDCHF[start][3].y = SMA(1, m360  , 360);
    AUDCHF[start][3].z = SMA(1, m720  , 720);
    AUDCHF[start][3].w = SMA(1, m1440 , 1440);

    AUDJPY[start][0].x = SMA(2, m1    , 1);
    AUDJPY[start][0].y = SMA(2, m2    , 2);
    AUDJPY[start][0].z = SMA(2, m3    , 3);
    AUDJPY[start][0].w = SMA(2, m4    , 4);
    AUDJPY[start][1].x = SMA(2, m5    , 5);
    AUDJPY[start][1].y = SMA(2, m10   , 10);
    AUDJPY[start][1].z = SMA(2, m15   , 15);
    AUDJPY[start][1].w = SMA(2, m30   , 30);
    AUDJPY[start][2].x = SMA(2, m45   , 45);
    AUDJPY[start][2].y = SMA(2, m60   , 60);
    AUDJPY[start][2].z = SMA(2, m120  , 120);
    AUDJPY[start][2].w = SMA(2, m180  , 180);
    AUDJPY[start][3].x = SMA(2, m240  , 240);
    AUDJPY[start][3].y = SMA(2, m360  , 360);
    AUDJPY[start][3].z = SMA(2, m720  , 720);
    AUDJPY[start][3].w = SMA(2, m1440 , 1440);

    AUDUSD[start][0].x = SMA(3, m1    , 1);
    AUDUSD[start][0].y = SMA(3, m2    , 2);
    AUDUSD[start][0].z = SMA(3, m3    , 3);
    AUDUSD[start][0].w = SMA(3, m4    , 4);
    AUDUSD[start][1].x = SMA(3, m5    , 5);
    AUDUSD[start][1].y = SMA(3, m10   , 10);
    AUDUSD[start][1].z = SMA(3, m15   , 15);
    AUDUSD[start][1].w = SMA(3, m30   , 30);
    AUDUSD[start][2].x = SMA(3, m45   , 45);
    AUDUSD[start][2].y = SMA(3, m60   , 60);
    AUDUSD[start][2].z = SMA(3, m120  , 120);
    AUDUSD[start][2].w = SMA(3, m180  , 180);
    AUDUSD[start][3].x = SMA(3, m240  , 240);
    AUDUSD[start][3].y = SMA(3, m360  , 360);
    AUDUSD[start][3].z = SMA(3, m720  , 720);
    AUDUSD[start][3].w = SMA(3, m1440 , 1440);

    CADCHF[start][0].x = SMA(4, m1    , 1);
    CADCHF[start][0].y = SMA(4, m2    , 2);
    CADCHF[start][0].z = SMA(4, m3    , 3);
    CADCHF[start][0].w = SMA(4, m4    , 4);
    CADCHF[start][1].x = SMA(4, m5    , 5);
    CADCHF[start][1].y = SMA(4, m10   , 10);
    CADCHF[start][1].z = SMA(4, m15   , 15);
    CADCHF[start][1].w = SMA(4, m30   , 30);
    CADCHF[start][2].x = SMA(4, m45   , 45);
    CADCHF[start][2].y = SMA(4, m60   , 60);
    CADCHF[start][2].z = SMA(4, m120  , 120);
    CADCHF[start][2].w = SMA(4, m180  , 180);
    CADCHF[start][3].x = SMA(4, m240  , 240);
    CADCHF[start][3].y = SMA(4, m360  , 360);
    CADCHF[start][3].z = SMA(4, m720  , 720);
    CADCHF[start][3].w = SMA(4, m1440 , 1440);

    CADJPY[start][0].x = SMA(5, m1    , 1);
    CADJPY[start][0].y = SMA(5, m2    , 2);
    CADJPY[start][0].z = SMA(5, m3    , 3);
    CADJPY[start][0].w = SMA(5, m4    , 4);
    CADJPY[start][1].x = SMA(5, m5    , 5);
    CADJPY[start][1].y = SMA(5, m10   , 10);
    CADJPY[start][1].z = SMA(5, m15   , 15);
    CADJPY[start][1].w = SMA(5, m30   , 30);
    CADJPY[start][2].x = SMA(5, m45   , 45);
    CADJPY[start][2].y = SMA(5, m60   , 60);
    CADJPY[start][2].z = SMA(5, m120  , 120);
    CADJPY[start][2].w = SMA(5, m180  , 180);
    CADJPY[start][3].x = SMA(5, m240  , 240);
    CADJPY[start][3].y = SMA(5, m360  , 360);
    CADJPY[start][3].z = SMA(5, m720  , 720);
    CADJPY[start][3].w = SMA(5, m1440 , 1440);

    CHFJPY[start][0].x = SMA(6, m1    , 1);
    CHFJPY[start][0].y = SMA(6, m2    , 2);
    CHFJPY[start][0].z = SMA(6, m3    , 3);
    CHFJPY[start][0].w = SMA(6, m4    , 4);
    CHFJPY[start][1].x = SMA(6, m5    , 5);
    CHFJPY[start][1].y = SMA(6, m10   , 10);
    CHFJPY[start][1].z = SMA(6, m15   , 15);
    CHFJPY[start][1].w = SMA(6, m30   , 30);
    CHFJPY[start][2].x = SMA(6, m45   , 45);
    CHFJPY[start][2].y = SMA(6, m60   , 60);
    CHFJPY[start][2].z = SMA(6, m120  , 120);
    CHFJPY[start][2].w = SMA(6, m180  , 180);
    CHFJPY[start][3].x = SMA(6, m240  , 240);
    CHFJPY[start][3].y = SMA(6, m360  , 360);
    CHFJPY[start][3].z = SMA(6, m720  , 720);
    CHFJPY[start][3].w = SMA(6, m1440 , 1440);

    EURAUD[start][0].x = SMA(7, m1    , 1);
    EURAUD[start][0].y = SMA(7, m2    , 2);
    EURAUD[start][0].z = SMA(7, m3    , 3);
    EURAUD[start][0].w = SMA(7, m4    , 4);
    EURAUD[start][1].x = SMA(7, m5    , 5);
    EURAUD[start][1].y = SMA(7, m10   , 10);
    EURAUD[start][1].z = SMA(7, m15   , 15);
    EURAUD[start][1].w = SMA(7, m30   , 30);
    EURAUD[start][2].x = SMA(7, m45   , 45);
    EURAUD[start][2].y = SMA(7, m60   , 60);
    EURAUD[start][2].z = SMA(7, m120  , 120);
    EURAUD[start][2].w = SMA(7, m180  , 180);
    EURAUD[start][3].x = SMA(7, m240  , 240);
    EURAUD[start][3].y = SMA(7, m360  , 360);
    EURAUD[start][3].z = SMA(7, m720  , 720);
    EURAUD[start][3].w = SMA(7, m1440 , 1440);

    EURCAD[start][0].x = SMA(8, m1    , 1);
    EURCAD[start][0].y = SMA(8, m2    , 2);
    EURCAD[start][0].z = SMA(8, m3    , 3);
    EURCAD[start][0].w = SMA(8, m4    , 4);
    EURCAD[start][1].x = SMA(8, m5    , 5);
    EURCAD[start][1].y = SMA(8, m10   , 10);
    EURCAD[start][1].z = SMA(8, m15   , 15);
    EURCAD[start][1].w = SMA(8, m30   , 30);
    EURCAD[start][2].x = SMA(8, m45   , 45);
    EURCAD[start][2].y = SMA(8, m60   , 60);
    EURCAD[start][2].z = SMA(8, m120  , 120);
    EURCAD[start][2].w = SMA(8, m180  , 180);
    EURCAD[start][3].x = SMA(8, m240  , 240);
    EURCAD[start][3].y = SMA(8, m360  , 360);
    EURCAD[start][3].z = SMA(8, m720  , 720);
    EURCAD[start][3].w = SMA(8, m1440 , 1440);

    EURCHF[start][0].x = SMA(9, m1    , 1);
    EURCHF[start][0].y = SMA(9, m2    , 2);
    EURCHF[start][0].z = SMA(9, m3    , 3);
    EURCHF[start][0].w = SMA(9, m4    , 4);
    EURCHF[start][1].x = SMA(9, m5    , 5);
    EURCHF[start][1].y = SMA(9, m10   , 10);
    EURCHF[start][1].z = SMA(9, m15   , 15);
    EURCHF[start][1].w = SMA(9, m30   , 30);
    EURCHF[start][2].x = SMA(9, m45   , 45);
    EURCHF[start][2].y = SMA(9, m60   , 60);
    EURCHF[start][2].z = SMA(9, m120  , 120);
    EURCHF[start][2].w = SMA(9, m180  , 180);
    EURCHF[start][3].x = SMA(9, m240  , 240);
    EURCHF[start][3].y = SMA(9, m360  , 360);
    EURCHF[start][3].z = SMA(9, m720  , 720);
    EURCHF[start][3].w = SMA(9, m1440 , 1440);

    EURGBP[start][0].x = SMA(10, m1    , 1);
    EURGBP[start][0].y = SMA(10, m2    , 2);
    EURGBP[start][0].z = SMA(10, m3    , 3);
    EURGBP[start][0].w = SMA(10, m4    , 4);
    EURGBP[start][1].x = SMA(10, m5    , 5);
    EURGBP[start][1].y = SMA(10, m10   , 10);
    EURGBP[start][1].z = SMA(10, m15   , 15);
    EURGBP[start][1].w = SMA(10, m30   , 30);
    EURGBP[start][2].x = SMA(10, m45   , 45);
    EURGBP[start][2].y = SMA(10, m60   , 60);
    EURGBP[start][2].z = SMA(10, m120  , 120);
    EURGBP[start][2].w = SMA(10, m180  , 180);
    EURGBP[start][3].x = SMA(10, m240  , 240);
    EURGBP[start][3].y = SMA(10, m360  , 360);
    EURGBP[start][3].z = SMA(10, m720  , 720);
    EURGBP[start][3].w = SMA(10, m1440 , 1440);

    EURJPY[start][0].x = SMA(11, m1    , 1);
    EURJPY[start][0].y = SMA(11, m2    , 2);
    EURJPY[start][0].z = SMA(11, m3    , 3);
    EURJPY[start][0].w = SMA(11, m4    , 4);
    EURJPY[start][1].x = SMA(11, m5    , 5);
    EURJPY[start][1].y = SMA(11, m10   , 10);
    EURJPY[start][1].z = SMA(11, m15   , 15);
    EURJPY[start][1].w = SMA(11, m30   , 30);
    EURJPY[start][2].x = SMA(11, m45   , 45);
    EURJPY[start][2].y = SMA(11, m60   , 60);
    EURJPY[start][2].z = SMA(11, m120  , 120);
    EURJPY[start][2].w = SMA(11, m180  , 180);
    EURJPY[start][3].x = SMA(11, m240  , 240);
    EURJPY[start][3].y = SMA(11, m360  , 360);
    EURJPY[start][3].z = SMA(11, m720  , 720);
    EURJPY[start][3].w = SMA(11, m1440 , 1440);

    EURUSD[start][0].x = SMA(12, m1    , 1);
    EURUSD[start][0].y = SMA(12, m2    , 2);
    EURUSD[start][0].z = SMA(12, m3    , 3);
    EURUSD[start][0].w = SMA(12, m4    , 4);
    EURUSD[start][1].x = SMA(12, m5    , 5);
    EURUSD[start][1].y = SMA(12, m10   , 10);
    EURUSD[start][1].z = SMA(12, m15   , 15);
    EURUSD[start][1].w = SMA(12, m30   , 30);
    EURUSD[start][2].x = SMA(12, m45   , 45);
    EURUSD[start][2].y = SMA(12, m60   , 60);
    EURUSD[start][2].z = SMA(12, m120  , 120);
    EURUSD[start][2].w = SMA(12, m180  , 180);
    EURUSD[start][3].x = SMA(12, m240  , 240);
    EURUSD[start][3].y = SMA(12, m360  , 360);
    EURUSD[start][3].z = SMA(12, m720  , 720);
    EURUSD[start][3].w = SMA(12, m1440 , 1440);

    GBPAUD[start][0].x = SMA(13, m1    , 1);
    GBPAUD[start][0].y = SMA(13, m2    , 2);
    GBPAUD[start][0].z = SMA(13, m3    , 3);
    GBPAUD[start][0].w = SMA(13, m4    , 4);
    GBPAUD[start][1].x = SMA(13, m5    , 5);
    GBPAUD[start][1].y = SMA(13, m10   , 10);
    GBPAUD[start][1].z = SMA(13, m15   , 15);
    GBPAUD[start][1].w = SMA(13, m30   , 30);
    GBPAUD[start][2].x = SMA(13, m45   , 45);
    GBPAUD[start][2].y = SMA(13, m60   , 60);
    GBPAUD[start][2].z = SMA(13, m120  , 120);
    GBPAUD[start][2].w = SMA(13, m180  , 180);
    GBPAUD[start][3].x = SMA(13, m240  , 240);
    GBPAUD[start][3].y = SMA(13, m360  , 360);
    GBPAUD[start][3].z = SMA(13, m720  , 720);
    GBPAUD[start][3].w = SMA(13, m1440 , 1440);

    GBPCAD[start][0].x = SMA(14, m1    , 1);
    GBPCAD[start][0].y = SMA(14, m2    , 2);
    GBPCAD[start][0].z = SMA(14, m3    , 3);
    GBPCAD[start][0].w = SMA(14, m4    , 4);
    GBPCAD[start][1].x = SMA(14, m5    , 5);
    GBPCAD[start][1].y = SMA(14, m10   , 10);
    GBPCAD[start][1].z = SMA(14, m15   , 15);
    GBPCAD[start][1].w = SMA(14, m30   , 30);
    GBPCAD[start][2].x = SMA(14, m45   , 45);
    GBPCAD[start][2].y = SMA(14, m60   , 60);
    GBPCAD[start][2].z = SMA(14, m120  , 120);
    GBPCAD[start][2].w = SMA(14, m180  , 180);
    GBPCAD[start][3].x = SMA(14, m240  , 240);
    GBPCAD[start][3].y = SMA(14, m360  , 360);
    GBPCAD[start][3].z = SMA(14, m720  , 720);
    GBPCAD[start][3].w = SMA(14, m1440 , 1440);

    GBPCHF[start][0].x = SMA(15, m1    , 1);
    GBPCHF[start][0].y = SMA(15, m2    , 2);
    GBPCHF[start][0].z = SMA(15, m3    , 3);
    GBPCHF[start][0].w = SMA(15, m4    , 4);
    GBPCHF[start][1].x = SMA(15, m5    , 5);
    GBPCHF[start][1].y = SMA(15, m10   , 10);
    GBPCHF[start][1].z = SMA(15, m15   , 15);
    GBPCHF[start][1].w = SMA(15, m30   , 30);
    GBPCHF[start][2].x = SMA(15, m45   , 45);
    GBPCHF[start][2].y = SMA(15, m60   , 60);
    GBPCHF[start][2].z = SMA(15, m120  , 120);
    GBPCHF[start][2].w = SMA(15, m180  , 180);
    GBPCHF[start][3].x = SMA(15, m240  , 240);
    GBPCHF[start][3].y = SMA(15, m360  , 360);
    GBPCHF[start][3].z = SMA(15, m720  , 720);
    GBPCHF[start][3].w = SMA(15, m1440 , 1440);

    GBPJPY[start][0].x = SMA(16, m1    , 1);
    GBPJPY[start][0].y = SMA(16, m2    , 2);
    GBPJPY[start][0].z = SMA(16, m3    , 3);
    GBPJPY[start][0].w = SMA(16, m4    , 4);
    GBPJPY[start][1].x = SMA(16, m5    , 5);
    GBPJPY[start][1].y = SMA(16, m10   , 10);
    GBPJPY[start][1].z = SMA(16, m15   , 15);
    GBPJPY[start][1].w = SMA(16, m30   , 30);
    GBPJPY[start][2].x = SMA(16, m45   , 45);
    GBPJPY[start][2].y = SMA(16, m60   , 60);
    GBPJPY[start][2].z = SMA(16, m120  , 120);
    GBPJPY[start][2].w = SMA(16, m180  , 180);
    GBPJPY[start][3].x = SMA(16, m240  , 240);
    GBPJPY[start][3].y = SMA(16, m360  , 360);
    GBPJPY[start][3].z = SMA(16, m720  , 720);
    GBPJPY[start][3].w = SMA(16, m1440 , 1440);

    GBPUSD[start][0].x = SMA(17, m1    , 1);
    GBPUSD[start][0].y = SMA(17, m2    , 2);
    GBPUSD[start][0].z = SMA(17, m3    , 3);
    GBPUSD[start][0].w = SMA(17, m4    , 4);
    GBPUSD[start][1].x = SMA(17, m5    , 5);
    GBPUSD[start][1].y = SMA(17, m10   , 10);
    GBPUSD[start][1].z = SMA(17, m15   , 15);
    GBPUSD[start][1].w = SMA(17, m30   , 30);
    GBPUSD[start][2].x = SMA(17, m45   , 45);
    GBPUSD[start][2].y = SMA(17, m60   , 60);
    GBPUSD[start][2].z = SMA(17, m120  , 120);
    GBPUSD[start][2].w = SMA(17, m180  , 180);
    GBPUSD[start][3].x = SMA(17, m240  , 240);
    GBPUSD[start][3].y = SMA(17, m360  , 360);
    GBPUSD[start][3].z = SMA(17, m720  , 720);
    GBPUSD[start][3].w = SMA(17, m1440 , 1440);

    USDCAD[start][0].x = SMA(18, m1    , 1);
    USDCAD[start][0].y = SMA(18, m2    , 2);
    USDCAD[start][0].z = SMA(18, m3    , 3);
    USDCAD[start][0].w = SMA(18, m4    , 4);
    USDCAD[start][1].x = SMA(18, m5    , 5);
    USDCAD[start][1].y = SMA(18, m10   , 10);
    USDCAD[start][1].z = SMA(18, m15   , 15);
    USDCAD[start][1].w = SMA(18, m30   , 30);
    USDCAD[start][2].x = SMA(18, m45   , 45);
    USDCAD[start][2].y = SMA(18, m60   , 60);
    USDCAD[start][2].z = SMA(18, m120  , 120);
    USDCAD[start][2].w = SMA(18, m180  , 180);
    USDCAD[start][3].x = SMA(18, m240  , 240);
    USDCAD[start][3].y = SMA(18, m360  , 360);
    USDCAD[start][3].z = SMA(18, m720  , 720);
    USDCAD[start][3].w = SMA(18, m1440 , 1440);

    USDCHF[start][0].x = SMA(19, m1    , 1);
    USDCHF[start][0].y = SMA(19, m2    , 2);
    USDCHF[start][0].z = SMA(19, m3    , 3);
    USDCHF[start][0].w = SMA(19, m4    , 4);
    USDCHF[start][1].x = SMA(19, m5    , 5);
    USDCHF[start][1].y = SMA(19, m10   , 10);
    USDCHF[start][1].z = SMA(19, m15   , 15);
    USDCHF[start][1].w = SMA(19, m30   , 30);
    USDCHF[start][2].x = SMA(19, m45   , 45);
    USDCHF[start][2].y = SMA(19, m60   , 60);
    USDCHF[start][2].z = SMA(19, m120  , 120);
    USDCHF[start][2].w = SMA(19, m180  , 180);
    USDCHF[start][3].x = SMA(19, m240  , 240);
    USDCHF[start][3].y = SMA(19, m360  , 360);
    USDCHF[start][3].z = SMA(19, m720  , 720);
    USDCHF[start][3].w = SMA(19, m1440 , 1440);

    USDJPY[start][0].x = SMA(20, m1    , 1);
    USDJPY[start][0].y = SMA(20, m2    , 2);
    USDJPY[start][0].z = SMA(20, m3    , 3);
    USDJPY[start][0].w = SMA(20, m4    , 4);
    USDJPY[start][1].x = SMA(20, m5    , 5);
    USDJPY[start][1].y = SMA(20, m10   , 10);
    USDJPY[start][1].z = SMA(20, m15   , 15);
    USDJPY[start][1].w = SMA(20, m30   , 30);
    USDJPY[start][2].x = SMA(20, m45   , 45);
    USDJPY[start][2].y = SMA(20, m60   , 60);
    USDJPY[start][2].z = SMA(20, m120  , 120);
    USDJPY[start][2].w = SMA(20, m180  , 180);
    USDJPY[start][3].x = SMA(20, m240  , 240);
    USDJPY[start][3].y = SMA(20, m360  , 360);
    USDJPY[start][3].z = SMA(20, m720  , 720);
    USDJPY[start][3].w = SMA(20, m1440 , 1440);



}

void main() {
    simple_moving_average(index);

}
