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
layout(std140, binding=4) buffer MovingAverageConvergenceDivergence{
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

void MACD(int start, int fast, int slow){
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

    AUDCAD[start][0].x = VWMA(0, m1    , 1   *fast) - VWMA(0, m1    , 1   *slow);
    //AUDCAD[start][0].y = VWMA(0, m2    , 2   *fast) - VWMA(0, m2    , 2   *slow);
    //AUDCAD[start][0].z = VWMA(0, m3    , 3   *fast) - VWMA(0, m3    , 3   *slow);
    //AUDCAD[start][0].w = VWMA(0, m4    , 4   *fast) - VWMA(0, m4    , 4   *slow);
    //AUDCAD[start][1].x = VWMA(0, m5    , 5   *fast) - VWMA(0, m5    , 5   *slow);
    //AUDCAD[start][1].y = VWMA(0, m10   , 10  *fast) - VWMA(0, m10   , 10  *slow);
    //AUDCAD[start][1].z = VWMA(0, m15   , 15  *fast) - VWMA(0, m15   , 15  *slow);
    //AUDCAD[start][1].w = VWMA(0, m30   , 30  *fast) - VWMA(0, m30   , 30  *slow);
    //AUDCAD[start][2].x = VWMA(0, m45   , 45  *fast) - VWMA(0, m45   , 45  *slow);
    //AUDCAD[start][2].y = VWMA(0, m60   , 60  *fast) - VWMA(0, m60   , 60  *slow);
    //AUDCAD[start][2].z = VWMA(0, m120  , 120 *fast) - VWMA(0, m120  , 120 *slow);
    //AUDCAD[start][2].w = VWMA(0, m180  , 180 *fast) - VWMA(0, m180  , 180 *slow);
    //AUDCAD[start][3].x = VWMA(0, m240  , 240 *fast) - VWMA(0, m240  , 240 *slow);
    //AUDCAD[start][3].y = VWMA(0, m360  , 360 *fast) - VWMA(0, m360  , 360 *slow);
    //AUDCAD[start][3].z = VWMA(0, m720  , 720 *fast) - VWMA(0, m720  , 720 *slow);
    //AUDCAD[start][3].w = VWMA(0, m1440 , 1440*fast) - VWMA(0, m1440 , 1440*slow);

    AUDCHF[start][0].x = VWMA(1, m1    , 1   *fast) - VWMA(1, m1    , 1   *slow);
    //AUDCHF[start][0].y = VWMA(1, m2    , 2   *fast) - VWMA(1, m2    , 2   *slow);
    //AUDCHF[start][0].z = VWMA(1, m3    , 3   *fast) - VWMA(1, m3    , 3   *slow);
    //AUDCHF[start][0].w = VWMA(1, m4    , 4   *fast) - VWMA(1, m4    , 4   *slow);
    //AUDCHF[start][1].x = VWMA(1, m5    , 5   *fast) - VWMA(1, m5    , 5   *slow);
    //AUDCHF[start][1].y = VWMA(1, m10   , 10  *fast) - VWMA(1, m10   , 10  *slow);
    //AUDCHF[start][1].z = VWMA(1, m15   , 15  *fast) - VWMA(1, m15   , 15  *slow);
    //AUDCHF[start][1].w = VWMA(1, m30   , 30  *fast) - VWMA(1, m30   , 30  *slow);
    //AUDCHF[start][2].x = VWMA(1, m45   , 45  *fast) - VWMA(1, m45   , 45  *slow);
    //AUDCHF[start][2].y = VWMA(1, m60   , 60  *fast) - VWMA(1, m60   , 60  *slow);
    //AUDCHF[start][2].z = VWMA(1, m120  , 120 *fast) - VWMA(1, m120  , 120 *slow);
    //AUDCHF[start][2].w = VWMA(1, m180  , 180 *fast) - VWMA(1, m180  , 180 *slow);
    //AUDCHF[start][3].x = VWMA(1, m240  , 240 *fast) - VWMA(1, m240  , 240 *slow);
    //AUDCHF[start][3].y = VWMA(1, m360  , 360 *fast) - VWMA(1, m360  , 360 *slow);
    //AUDCHF[start][3].z = VWMA(1, m720  , 720 *fast) - VWMA(1, m720  , 720 *slow);
    //AUDCHF[start][3].w = VWMA(1, m1440 , 1440*fast) - VWMA(1, m1440 , 1440*slow);

    AUDJPY[start][0].x = VWMA(2, m1    , 1   *fast) - VWMA(2, m1    , 1   *slow);
    //AUDJPY[start][0].y = VWMA(2, m2    , 2   *fast) - VWMA(2, m2    , 2   *slow);
    //AUDJPY[start][0].z = VWMA(2, m3    , 3   *fast) - VWMA(2, m3    , 3   *slow);
    //AUDJPY[start][0].w = VWMA(2, m4    , 4   *fast) - VWMA(2, m4    , 4   *slow);
    //AUDJPY[start][1].x = VWMA(2, m5    , 5   *fast) - VWMA(2, m5    , 5   *slow);
    //AUDJPY[start][1].y = VWMA(2, m10   , 10  *fast) - VWMA(2, m10   , 10  *slow);
    //AUDJPY[start][1].z = VWMA(2, m15   , 15  *fast) - VWMA(2, m15   , 15  *slow);
    //AUDJPY[start][1].w = VWMA(2, m30   , 30  *fast) - VWMA(2, m30   , 30  *slow);
    //AUDJPY[start][2].x = VWMA(2, m45   , 45  *fast) - VWMA(2, m45   , 45  *slow);
    //AUDJPY[start][2].y = VWMA(2, m60   , 60  *fast) - VWMA(2, m60   , 60  *slow);
    //AUDJPY[start][2].z = VWMA(2, m120  , 120 *fast) - VWMA(2, m120  , 120 *slow);
    //AUDJPY[start][2].w = VWMA(2, m180  , 180 *fast) - VWMA(2, m180  , 180 *slow);
    //AUDJPY[start][3].x = VWMA(2, m240  , 240 *fast) - VWMA(2, m240  , 240 *slow);
    //AUDJPY[start][3].y = VWMA(2, m360  , 360 *fast) - VWMA(2, m360  , 360 *slow);
    //AUDJPY[start][3].z = VWMA(2, m720  , 720 *fast) - VWMA(2, m720  , 720 *slow);
    //AUDJPY[start][3].w = VWMA(2, m1440 , 1440*fast) - VWMA(2, m1440 , 1440*slow);

    AUDUSD[start][0].x = VWMA(3, m1    , 1   *fast) - VWMA(3, m1    , 1   *slow);
    //AUDUSD[start][0].y = VWMA(3, m2    , 2   *fast) - VWMA(3, m2    , 2   *slow);
    //AUDUSD[start][0].z = VWMA(3, m3    , 3   *fast) - VWMA(3, m3    , 3   *slow);
    //AUDUSD[start][0].w = VWMA(3, m4    , 4   *fast) - VWMA(3, m4    , 4   *slow);
    //AUDUSD[start][1].x = VWMA(3, m5    , 5   *fast) - VWMA(3, m5    , 5   *slow);
    //AUDUSD[start][1].y = VWMA(3, m10   , 10  *fast) - VWMA(3, m10   , 10  *slow);
    //AUDUSD[start][1].z = VWMA(3, m15   , 15  *fast) - VWMA(3, m15   , 15  *slow);
    //AUDUSD[start][1].w = VWMA(3, m30   , 30  *fast) - VWMA(3, m30   , 30  *slow);
    //AUDUSD[start][2].x = VWMA(3, m45   , 45  *fast) - VWMA(3, m45   , 45  *slow);
    //AUDUSD[start][2].y = VWMA(3, m60   , 60  *fast) - VWMA(3, m60   , 60  *slow);
    //AUDUSD[start][2].z = VWMA(3, m120  , 120 *fast) - VWMA(3, m120  , 120 *slow);
    //AUDUSD[start][2].w = VWMA(3, m180  , 180 *fast) - VWMA(3, m180  , 180 *slow);
    //AUDUSD[start][3].x = VWMA(3, m240  , 240 *fast) - VWMA(3, m240  , 240 *slow);
    //AUDUSD[start][3].y = VWMA(3, m360  , 360 *fast) - VWMA(3, m360  , 360 *slow);
    //AUDUSD[start][3].z = VWMA(3, m720  , 720 *fast) - VWMA(3, m720  , 720 *slow);
    //AUDUSD[start][3].w = VWMA(3, m1440 , 1440*fast) - VWMA(3, m1440 , 1440*slow);

    CADCHF[start][0].x = VWMA(4, m1    , 1   *fast) - VWMA(4, m1    , 1   *slow);
    //CADCHF[start][0].y = VWMA(4, m2    , 2   *fast) - VWMA(4, m2    , 2   *slow);
    //CADCHF[start][0].z = VWMA(4, m3    , 3   *fast) - VWMA(4, m3    , 3   *slow);
    //CADCHF[start][0].w = VWMA(4, m4    , 4   *fast) - VWMA(4, m4    , 4   *slow);
    //CADCHF[start][1].x = VWMA(4, m5    , 5   *fast) - VWMA(4, m5    , 5   *slow);
    //CADCHF[start][1].y = VWMA(4, m10   , 10  *fast) - VWMA(4, m10   , 10  *slow);
    //CADCHF[start][1].z = VWMA(4, m15   , 15  *fast) - VWMA(4, m15   , 15  *slow);
    //CADCHF[start][1].w = VWMA(4, m30   , 30  *fast) - VWMA(4, m30   , 30  *slow);
    //CADCHF[start][2].x = VWMA(4, m45   , 45  *fast) - VWMA(4, m45   , 45  *slow);
    //CADCHF[start][2].y = VWMA(4, m60   , 60  *fast) - VWMA(4, m60   , 60  *slow);
    //CADCHF[start][2].z = VWMA(4, m120  , 120 *fast) - VWMA(4, m120  , 120 *slow);
    //CADCHF[start][2].w = VWMA(4, m180  , 180 *fast) - VWMA(4, m180  , 180 *slow);
    //CADCHF[start][3].x = VWMA(4, m240  , 240 *fast) - VWMA(4, m240  , 240 *slow);
    //CADCHF[start][3].y = VWMA(4, m360  , 360 *fast) - VWMA(4, m360  , 360 *slow);
    //CADCHF[start][3].z = VWMA(4, m720  , 720 *fast) - VWMA(4, m720  , 720 *slow);
    //CADCHF[start][3].w = VWMA(4, m1440 , 1440*fast) - VWMA(4, m1440 , 1440*slow);

    CADJPY[start][0].x = VWMA(5, m1    , 1   *fast) - VWMA(5, m1    , 1   *slow);
    //CADJPY[start][0].y = VWMA(5, m2    , 2   *fast) - VWMA(5, m2    , 2   *slow);
    //CADJPY[start][0].z = VWMA(5, m3    , 3   *fast) - VWMA(5, m3    , 3   *slow);
    //CADJPY[start][0].w = VWMA(5, m4    , 4   *fast) - VWMA(5, m4    , 4   *slow);
    //CADJPY[start][1].x = VWMA(5, m5    , 5   *fast) - VWMA(5, m5    , 5   *slow);
    //CADJPY[start][1].y = VWMA(5, m10   , 10  *fast) - VWMA(5, m10   , 10  *slow);
    //CADJPY[start][1].z = VWMA(5, m15   , 15  *fast) - VWMA(5, m15   , 15  *slow);
    //CADJPY[start][1].w = VWMA(5, m30   , 30  *fast) - VWMA(5, m30   , 30  *slow);
    //CADJPY[start][2].x = VWMA(5, m45   , 45  *fast) - VWMA(5, m45   , 45  *slow);
    //CADJPY[start][2].y = VWMA(5, m60   , 60  *fast) - VWMA(5, m60   , 60  *slow);
    //CADJPY[start][2].z = VWMA(5, m120  , 120 *fast) - VWMA(5, m120  , 120 *slow);
    //CADJPY[start][2].w = VWMA(5, m180  , 180 *fast) - VWMA(5, m180  , 180 *slow);
    //CADJPY[start][3].x = VWMA(5, m240  , 240 *fast) - VWMA(5, m240  , 240 *slow);
    //CADJPY[start][3].y = VWMA(5, m360  , 360 *fast) - VWMA(5, m360  , 360 *slow);
    //CADJPY[start][3].z = VWMA(5, m720  , 720 *fast) - VWMA(5, m720  , 720 *slow);
    //CADJPY[start][3].w = VWMA(5, m1440 , 1440*fast) - VWMA(5, m1440 , 1440*slow);

    CHFJPY[start][0].x = VWMA(6, m1    , 1   *fast) - VWMA(6, m1    , 1   *slow);
    //CHFJPY[start][0].y = VWMA(6, m2    , 2   *fast) - VWMA(6, m2    , 2   *slow);
    //CHFJPY[start][0].z = VWMA(6, m3    , 3   *fast) - VWMA(6, m3    , 3   *slow);
    //CHFJPY[start][0].w = VWMA(6, m4    , 4   *fast) - VWMA(6, m4    , 4   *slow);
    //CHFJPY[start][1].x = VWMA(6, m5    , 5   *fast) - VWMA(6, m5    , 5   *slow);
    //CHFJPY[start][1].y = VWMA(6, m10   , 10  *fast) - VWMA(6, m10   , 10  *slow);
    //CHFJPY[start][1].z = VWMA(6, m15   , 15  *fast) - VWMA(6, m15   , 15  *slow);
    //CHFJPY[start][1].w = VWMA(6, m30   , 30  *fast) - VWMA(6, m30   , 30  *slow);
    //CHFJPY[start][2].x = VWMA(6, m45   , 45  *fast) - VWMA(6, m45   , 45  *slow);
    //CHFJPY[start][2].y = VWMA(6, m60   , 60  *fast) - VWMA(6, m60   , 60  *slow);
    //CHFJPY[start][2].z = VWMA(6, m120  , 120 *fast) - VWMA(6, m120  , 120 *slow);
    //CHFJPY[start][2].w = VWMA(6, m180  , 180 *fast) - VWMA(6, m180  , 180 *slow);
    //CHFJPY[start][3].x = VWMA(6, m240  , 240 *fast) - VWMA(6, m240  , 240 *slow);
    //CHFJPY[start][3].y = VWMA(6, m360  , 360 *fast) - VWMA(6, m360  , 360 *slow);
    //CHFJPY[start][3].z = VWMA(6, m720  , 720 *fast) - VWMA(6, m720  , 720 *slow);
    //CHFJPY[start][3].w = VWMA(6, m1440 , 1440*fast) - VWMA(6, m1440 , 1440*slow);

    EURAUD[start][0].x = VWMA(7, m1    , 1   *fast) - VWMA(7, m1    , 1   *slow);
    //EURAUD[start][0].y = VWMA(7, m2    , 2   *fast) - VWMA(7, m2    , 2   *slow);
    //EURAUD[start][0].z = VWMA(7, m3    , 3   *fast) - VWMA(7, m3    , 3   *slow);
    //EURAUD[start][0].w = VWMA(7, m4    , 4   *fast) - VWMA(7, m4    , 4   *slow);
    //EURAUD[start][1].x = VWMA(7, m5    , 5   *fast) - VWMA(7, m5    , 5   *slow);
    //EURAUD[start][1].y = VWMA(7, m10   , 10  *fast) - VWMA(7, m10   , 10  *slow);
    //EURAUD[start][1].z = VWMA(7, m15   , 15  *fast) - VWMA(7, m15   , 15  *slow);
    //EURAUD[start][1].w = VWMA(7, m30   , 30  *fast) - VWMA(7, m30   , 30  *slow);
    //EURAUD[start][2].x = VWMA(7, m45   , 45  *fast) - VWMA(7, m45   , 45  *slow);
    //EURAUD[start][2].y = VWMA(7, m60   , 60  *fast) - VWMA(7, m60   , 60  *slow);
    //EURAUD[start][2].z = VWMA(7, m120  , 120 *fast) - VWMA(7, m120  , 120 *slow);
    //EURAUD[start][2].w = VWMA(7, m180  , 180 *fast) - VWMA(7, m180  , 180 *slow);
    //EURAUD[start][3].x = VWMA(7, m240  , 240 *fast) - VWMA(7, m240  , 240 *slow);
    //EURAUD[start][3].y = VWMA(7, m360  , 360 *fast) - VWMA(7, m360  , 360 *slow);
    //EURAUD[start][3].z = VWMA(7, m720  , 720 *fast) - VWMA(7, m720  , 720 *slow);
    //EURAUD[start][3].w = VWMA(7, m1440 , 1440*fast) - VWMA(7, m1440 , 1440*slow);

    EURCAD[start][0].x = VWMA(8, m1    , 1   *fast) - VWMA(8, m1    , 1   *slow);
    //EURCAD[start][0].y = VWMA(8, m2    , 2   *fast) - VWMA(8, m2    , 2   *slow);
    //EURCAD[start][0].z = VWMA(8, m3    , 3   *fast) - VWMA(8, m3    , 3   *slow);
    //EURCAD[start][0].w = VWMA(8, m4    , 4   *fast) - VWMA(8, m4    , 4   *slow);
    //EURCAD[start][1].x = VWMA(8, m5    , 5   *fast) - VWMA(8, m5    , 5   *slow);
    //EURCAD[start][1].y = VWMA(8, m10   , 10  *fast) - VWMA(8, m10   , 10  *slow);
    //EURCAD[start][1].z = VWMA(8, m15   , 15  *fast) - VWMA(8, m15   , 15  *slow);
    //EURCAD[start][1].w = VWMA(8, m30   , 30  *fast) - VWMA(8, m30   , 30  *slow);
    //EURCAD[start][2].x = VWMA(8, m45   , 45  *fast) - VWMA(8, m45   , 45  *slow);
    //EURCAD[start][2].y = VWMA(8, m60   , 60  *fast) - VWMA(8, m60   , 60  *slow);
    //EURCAD[start][2].z = VWMA(8, m120  , 120 *fast) - VWMA(8, m120  , 120 *slow);
    //EURCAD[start][2].w = VWMA(8, m180  , 180 *fast) - VWMA(8, m180  , 180 *slow);
    //EURCAD[start][3].x = VWMA(8, m240  , 240 *fast) - VWMA(8, m240  , 240 *slow);
    //EURCAD[start][3].y = VWMA(8, m360  , 360 *fast) - VWMA(8, m360  , 360 *slow);
    //EURCAD[start][3].z = VWMA(8, m720  , 720 *fast) - VWMA(8, m720  , 720 *slow);
    //EURCAD[start][3].w = VWMA(8, m1440 , 1440*fast) - VWMA(8, m1440 , 1440*slow);

    EURCHF[start][0].x = VWMA(9, m1    , 1   *fast) - VWMA(9, m1    , 1   *slow);
    //EURCHF[start][0].y = VWMA(9, m2    , 2   *fast) - VWMA(9, m2    , 2   *slow);
    //EURCHF[start][0].z = VWMA(9, m3    , 3   *fast) - VWMA(9, m3    , 3   *slow);
    //EURCHF[start][0].w = VWMA(9, m4    , 4   *fast) - VWMA(9, m4    , 4   *slow);
    //EURCHF[start][1].x = VWMA(9, m5    , 5   *fast) - VWMA(9, m5    , 5   *slow);
    //EURCHF[start][1].y = VWMA(9, m10   , 10  *fast) - VWMA(9, m10   , 10  *slow);
    //EURCHF[start][1].z = VWMA(9, m15   , 15  *fast) - VWMA(9, m15   , 15  *slow);
    //EURCHF[start][1].w = VWMA(9, m30   , 30  *fast) - VWMA(9, m30   , 30  *slow);
    //EURCHF[start][2].x = VWMA(9, m45   , 45  *fast) - VWMA(9, m45   , 45  *slow);
    //EURCHF[start][2].y = VWMA(9, m60   , 60  *fast) - VWMA(9, m60   , 60  *slow);
    //EURCHF[start][2].z = VWMA(9, m120  , 120 *fast) - VWMA(9, m120  , 120 *slow);
    //EURCHF[start][2].w = VWMA(9, m180  , 180 *fast) - VWMA(9, m180  , 180 *slow);
    //EURCHF[start][3].x = VWMA(9, m240  , 240 *fast) - VWMA(9, m240  , 240 *slow);
    //EURCHF[start][3].y = VWMA(9, m360  , 360 *fast) - VWMA(9, m360  , 360 *slow);
    //EURCHF[start][3].z = VWMA(9, m720  , 720 *fast) - VWMA(9, m720  , 720 *slow);
    //EURCHF[start][3].w = VWMA(9, m1440 , 1440*fast) - VWMA(9, m1440 , 1440*slow);

    EURGBP[start][0].x = VWMA(10, m1    , 1   *fast) - VWMA(10, m1    , 1   *slow);
    //EURGBP[start][0].y = VWMA(10, m2    , 2   *fast) - VWMA(10, m2    , 2   *slow);
    //EURGBP[start][0].z = VWMA(10, m3    , 3   *fast) - VWMA(10, m3    , 3   *slow);
    //EURGBP[start][0].w = VWMA(10, m4    , 4   *fast) - VWMA(10, m4    , 4   *slow);
    //EURGBP[start][1].x = VWMA(10, m5    , 5   *fast) - VWMA(10, m5    , 5   *slow);
    //EURGBP[start][1].y = VWMA(10, m10   , 10  *fast) - VWMA(10, m10   , 10  *slow);
    //EURGBP[start][1].z = VWMA(10, m15   , 15  *fast) - VWMA(10, m15   , 15  *slow);
    //EURGBP[start][1].w = VWMA(10, m30   , 30  *fast) - VWMA(10, m30   , 30  *slow);
    //EURGBP[start][2].x = VWMA(10, m45   , 45  *fast) - VWMA(10, m45   , 45  *slow);
    //EURGBP[start][2].y = VWMA(10, m60   , 60  *fast) - VWMA(10, m60   , 60  *slow);
    //EURGBP[start][2].z = VWMA(10, m120  , 120 *fast) - VWMA(10, m120  , 120 *slow);
    //EURGBP[start][2].w = VWMA(10, m180  , 180 *fast) - VWMA(10, m180  , 180 *slow);
    //EURGBP[start][3].x = VWMA(10, m240  , 240 *fast) - VWMA(10, m240  , 240 *slow);
    //EURGBP[start][3].y = VWMA(10, m360  , 360 *fast) - VWMA(10, m360  , 360 *slow);
    //EURGBP[start][3].z = VWMA(10, m720  , 720 *fast) - VWMA(10, m720  , 720 *slow);
    //EURGBP[start][3].w = VWMA(10, m1440 , 1440*fast) - VWMA(10, m1440 , 1440*slow);

    EURJPY[start][0].x = VWMA(11, m1    , 1   *fast) - VWMA(11, m1    , 1   *slow);
    //EURJPY[start][0].y = VWMA(11, m2    , 2   *fast) - VWMA(11, m2    , 2   *slow);
    //EURJPY[start][0].z = VWMA(11, m3    , 3   *fast) - VWMA(11, m3    , 3   *slow);
    //EURJPY[start][0].w = VWMA(11, m4    , 4   *fast) - VWMA(11, m4    , 4   *slow);
    //EURJPY[start][1].x = VWMA(11, m5    , 5   *fast) - VWMA(11, m5    , 5   *slow);
    //EURJPY[start][1].y = VWMA(11, m10   , 10  *fast) - VWMA(11, m10   , 10  *slow);
    //EURJPY[start][1].z = VWMA(11, m15   , 15  *fast) - VWMA(11, m15   , 15  *slow);
    //EURJPY[start][1].w = VWMA(11, m30   , 30  *fast) - VWMA(11, m30   , 30  *slow);
    //EURJPY[start][2].x = VWMA(11, m45   , 45  *fast) - VWMA(11, m45   , 45  *slow);
    //EURJPY[start][2].y = VWMA(11, m60   , 60  *fast) - VWMA(11, m60   , 60  *slow);
    //EURJPY[start][2].z = VWMA(11, m120  , 120 *fast) - VWMA(11, m120  , 120 *slow);
    //EURJPY[start][2].w = VWMA(11, m180  , 180 *fast) - VWMA(11, m180  , 180 *slow);
    //EURJPY[start][3].x = VWMA(11, m240  , 240 *fast) - VWMA(11, m240  , 240 *slow);
    //EURJPY[start][3].y = VWMA(11, m360  , 360 *fast) - VWMA(11, m360  , 360 *slow);
    //EURJPY[start][3].z = VWMA(11, m720  , 720 *fast) - VWMA(11, m720  , 720 *slow);
    //EURJPY[start][3].w = VWMA(11, m1440 , 1440*fast) - VWMA(11, m1440 , 1440*slow);

    EURUSD[start][0].x = VWMA(12, m1    , 1   *fast) - VWMA(12, m1    , 1   *slow);
    //EURUSD[start][0].y = VWMA(12, m2    , 2   *fast) - VWMA(12, m2    , 2   *slow);
    //EURUSD[start][0].z = VWMA(12, m3    , 3   *fast) - VWMA(12, m3    , 3   *slow);
    //EURUSD[start][0].w = VWMA(12, m4    , 4   *fast) - VWMA(12, m4    , 4   *slow);
    //EURUSD[start][1].x = VWMA(12, m5    , 5   *fast) - VWMA(12, m5    , 5   *slow);
    //EURUSD[start][1].y = VWMA(12, m10   , 10  *fast) - VWMA(12, m10   , 10  *slow);
    //EURUSD[start][1].z = VWMA(12, m15   , 15  *fast) - VWMA(12, m15   , 15  *slow);
    //EURUSD[start][1].w = VWMA(12, m30   , 30  *fast) - VWMA(12, m30   , 30  *slow);
    //EURUSD[start][2].x = VWMA(12, m45   , 45  *fast) - VWMA(12, m45   , 45  *slow);
    //EURUSD[start][2].y = VWMA(12, m60   , 60  *fast) - VWMA(12, m60   , 60  *slow);
    //EURUSD[start][2].z = VWMA(12, m120  , 120 *fast) - VWMA(12, m120  , 120 *slow);
    //EURUSD[start][2].w = VWMA(12, m180  , 180 *fast) - VWMA(12, m180  , 180 *slow);
    //EURUSD[start][3].x = VWMA(12, m240  , 240 *fast) - VWMA(12, m240  , 240 *slow);
    //EURUSD[start][3].y = VWMA(12, m360  , 360 *fast) - VWMA(12, m360  , 360 *slow);
    //EURUSD[start][3].z = VWMA(12, m720  , 720 *fast) - VWMA(12, m720  , 720 *slow);
    //EURUSD[start][3].w = VWMA(12, m1440 , 1440*fast) - VWMA(12, m1440 , 1440*slow);

    GBPAUD[start][0].x = VWMA(13, m1    , 1   *fast) - VWMA(13, m1    , 1   *slow);
    //GBPAUD[start][0].y = VWMA(13, m2    , 2   *fast) - VWMA(13, m2    , 2   *slow);
    //GBPAUD[start][0].z = VWMA(13, m3    , 3   *fast) - VWMA(13, m3    , 3   *slow);
    //GBPAUD[start][0].w = VWMA(13, m4    , 4   *fast) - VWMA(13, m4    , 4   *slow);
    //GBPAUD[start][1].x = VWMA(13, m5    , 5   *fast) - VWMA(13, m5    , 5   *slow);
    //GBPAUD[start][1].y = VWMA(13, m10   , 10  *fast) - VWMA(13, m10   , 10  *slow);
    //GBPAUD[start][1].z = VWMA(13, m15   , 15  *fast) - VWMA(13, m15   , 15  *slow);
    //GBPAUD[start][1].w = VWMA(13, m30   , 30  *fast) - VWMA(13, m30   , 30  *slow);
    //GBPAUD[start][2].x = VWMA(13, m45   , 45  *fast) - VWMA(13, m45   , 45  *slow);
    //GBPAUD[start][2].y = VWMA(13, m60   , 60  *fast) - VWMA(13, m60   , 60  *slow);
    //GBPAUD[start][2].z = VWMA(13, m120  , 120 *fast) - VWMA(13, m120  , 120 *slow);
    //GBPAUD[start][2].w = VWMA(13, m180  , 180 *fast) - VWMA(13, m180  , 180 *slow);
    //GBPAUD[start][3].x = VWMA(13, m240  , 240 *fast) - VWMA(13, m240  , 240 *slow);
    //GBPAUD[start][3].y = VWMA(13, m360  , 360 *fast) - VWMA(13, m360  , 360 *slow);
    //GBPAUD[start][3].z = VWMA(13, m720  , 720 *fast) - VWMA(13, m720  , 720 *slow);
    //GBPAUD[start][3].w = VWMA(13, m1440 , 1440*fast) - VWMA(13, m1440 , 1440*slow);

    GBPCAD[start][0].x = VWMA(14, m1    , 1   *fast) - VWMA(14, m1    , 1   *slow);
    //GBPCAD[start][0].y = VWMA(14, m2    , 2   *fast) - VWMA(14, m2    , 2   *slow);
    //GBPCAD[start][0].z = VWMA(14, m3    , 3   *fast) - VWMA(14, m3    , 3   *slow);
    //GBPCAD[start][0].w = VWMA(14, m4    , 4   *fast) - VWMA(14, m4    , 4   *slow);
    //GBPCAD[start][1].x = VWMA(14, m5    , 5   *fast) - VWMA(14, m5    , 5   *slow);
    //GBPCAD[start][1].y = VWMA(14, m10   , 10  *fast) - VWMA(14, m10   , 10  *slow);
    //GBPCAD[start][1].z = VWMA(14, m15   , 15  *fast) - VWMA(14, m15   , 15  *slow);
    //GBPCAD[start][1].w = VWMA(14, m30   , 30  *fast) - VWMA(14, m30   , 30  *slow);
    //GBPCAD[start][2].x = VWMA(14, m45   , 45  *fast) - VWMA(14, m45   , 45  *slow);
    //GBPCAD[start][2].y = VWMA(14, m60   , 60  *fast) - VWMA(14, m60   , 60  *slow);
    //GBPCAD[start][2].z = VWMA(14, m120  , 120 *fast) - VWMA(14, m120  , 120 *slow);
    //GBPCAD[start][2].w = VWMA(14, m180  , 180 *fast) - VWMA(14, m180  , 180 *slow);
    //GBPCAD[start][3].x = VWMA(14, m240  , 240 *fast) - VWMA(14, m240  , 240 *slow);
    //GBPCAD[start][3].y = VWMA(14, m360  , 360 *fast) - VWMA(14, m360  , 360 *slow);
    //GBPCAD[start][3].z = VWMA(14, m720  , 720 *fast) - VWMA(14, m720  , 720 *slow);
    //GBPCAD[start][3].w = VWMA(14, m1440 , 1440*fast) - VWMA(14, m1440 , 1440*slow);

    GBPCHF[start][0].x = VWMA(15, m1    , 1   *fast) - VWMA(15, m1    , 1   *slow);
    //GBPCHF[start][0].y = VWMA(15, m2    , 2   *fast) - VWMA(15, m2    , 2   *slow);
    //GBPCHF[start][0].z = VWMA(15, m3    , 3   *fast) - VWMA(15, m3    , 3   *slow);
    //GBPCHF[start][0].w = VWMA(15, m4    , 4   *fast) - VWMA(15, m4    , 4   *slow);
    //GBPCHF[start][1].x = VWMA(15, m5    , 5   *fast) - VWMA(15, m5    , 5   *slow);
    //GBPCHF[start][1].y = VWMA(15, m10   , 10  *fast) - VWMA(15, m10   , 10  *slow);
    //GBPCHF[start][1].z = VWMA(15, m15   , 15  *fast) - VWMA(15, m15   , 15  *slow);
    //GBPCHF[start][1].w = VWMA(15, m30   , 30  *fast) - VWMA(15, m30   , 30  *slow);
    //GBPCHF[start][2].x = VWMA(15, m45   , 45  *fast) - VWMA(15, m45   , 45  *slow);
    //GBPCHF[start][2].y = VWMA(15, m60   , 60  *fast) - VWMA(15, m60   , 60  *slow);
    //GBPCHF[start][2].z = VWMA(15, m120  , 120 *fast) - VWMA(15, m120  , 120 *slow);
    //GBPCHF[start][2].w = VWMA(15, m180  , 180 *fast) - VWMA(15, m180  , 180 *slow);
    //GBPCHF[start][3].x = VWMA(15, m240  , 240 *fast) - VWMA(15, m240  , 240 *slow);
    //GBPCHF[start][3].y = VWMA(15, m360  , 360 *fast) - VWMA(15, m360  , 360 *slow);
    //GBPCHF[start][3].z = VWMA(15, m720  , 720 *fast) - VWMA(15, m720  , 720 *slow);
    //GBPCHF[start][3].w = VWMA(15, m1440 , 1440*fast) - VWMA(15, m1440 , 1440*slow);

    GBPJPY[start][0].x = VWMA(16, m1    , 1   *fast) - VWMA(16, m1    , 1   *slow);
    //GBPJPY[start][0].y = VWMA(16, m2    , 2   *fast) - VWMA(16, m2    , 2   *slow);
    //GBPJPY[start][0].z = VWMA(16, m3    , 3   *fast) - VWMA(16, m3    , 3   *slow);
    //GBPJPY[start][0].w = VWMA(16, m4    , 4   *fast) - VWMA(16, m4    , 4   *slow);
    //GBPJPY[start][1].x = VWMA(16, m5    , 5   *fast) - VWMA(16, m5    , 5   *slow);
    //GBPJPY[start][1].y = VWMA(16, m10   , 10  *fast) - VWMA(16, m10   , 10  *slow);
    //GBPJPY[start][1].z = VWMA(16, m15   , 15  *fast) - VWMA(16, m15   , 15  *slow);
    //GBPJPY[start][1].w = VWMA(16, m30   , 30  *fast) - VWMA(16, m30   , 30  *slow);
    //GBPJPY[start][2].x = VWMA(16, m45   , 45  *fast) - VWMA(16, m45   , 45  *slow);
    //GBPJPY[start][2].y = VWMA(16, m60   , 60  *fast) - VWMA(16, m60   , 60  *slow);
    //GBPJPY[start][2].z = VWMA(16, m120  , 120 *fast) - VWMA(16, m120  , 120 *slow);
    //GBPJPY[start][2].w = VWMA(16, m180  , 180 *fast) - VWMA(16, m180  , 180 *slow);
    //GBPJPY[start][3].x = VWMA(16, m240  , 240 *fast) - VWMA(16, m240  , 240 *slow);
    //GBPJPY[start][3].y = VWMA(16, m360  , 360 *fast) - VWMA(16, m360  , 360 *slow);
    //GBPJPY[start][3].z = VWMA(16, m720  , 720 *fast) - VWMA(16, m720  , 720 *slow);
    //GBPJPY[start][3].w = VWMA(16, m1440 , 1440*fast) - VWMA(16, m1440 , 1440*slow);

    GBPUSD[start][0].x = VWMA(17, m1    , 1   *fast) - VWMA(17, m1    , 1   *slow);
    //GBPUSD[start][0].y = VWMA(17, m2    , 2   *fast) - VWMA(17, m2    , 2   *slow);
    //GBPUSD[start][0].z = VWMA(17, m3    , 3   *fast) - VWMA(17, m3    , 3   *slow);
    //GBPUSD[start][0].w = VWMA(17, m4    , 4   *fast) - VWMA(17, m4    , 4   *slow);
    //GBPUSD[start][1].x = VWMA(17, m5    , 5   *fast) - VWMA(17, m5    , 5   *slow);
    //GBPUSD[start][1].y = VWMA(17, m10   , 10  *fast) - VWMA(17, m10   , 10  *slow);
    //GBPUSD[start][1].z = VWMA(17, m15   , 15  *fast) - VWMA(17, m15   , 15  *slow);
    //GBPUSD[start][1].w = VWMA(17, m30   , 30  *fast) - VWMA(17, m30   , 30  *slow);
    //GBPUSD[start][2].x = VWMA(17, m45   , 45  *fast) - VWMA(17, m45   , 45  *slow);
    //GBPUSD[start][2].y = VWMA(17, m60   , 60  *fast) - VWMA(17, m60   , 60  *slow);
    //GBPUSD[start][2].z = VWMA(17, m120  , 120 *fast) - VWMA(17, m120  , 120 *slow);
    //GBPUSD[start][2].w = VWMA(17, m180  , 180 *fast) - VWMA(17, m180  , 180 *slow);
    //GBPUSD[start][3].x = VWMA(17, m240  , 240 *fast) - VWMA(17, m240  , 240 *slow);
    //GBPUSD[start][3].y = VWMA(17, m360  , 360 *fast) - VWMA(17, m360  , 360 *slow);
    //GBPUSD[start][3].z = VWMA(17, m720  , 720 *fast) - VWMA(17, m720  , 720 *slow);
    //GBPUSD[start][3].w = VWMA(17, m1440 , 1440*fast) - VWMA(17, m1440 , 1440*slow);

    USDCAD[start][0].x = VWMA(18, m1    , 1   *fast) - VWMA(18, m1    , 1   *slow);
    //USDCAD[start][0].y = VWMA(18, m2    , 2   *fast) - VWMA(18, m2    , 2   *slow);
    //USDCAD[start][0].z = VWMA(18, m3    , 3   *fast) - VWMA(18, m3    , 3   *slow);
    //USDCAD[start][0].w = VWMA(18, m4    , 4   *fast) - VWMA(18, m4    , 4   *slow);
    //USDCAD[start][1].x = VWMA(18, m5    , 5   *fast) - VWMA(18, m5    , 5   *slow);
    //USDCAD[start][1].y = VWMA(18, m10   , 10  *fast) - VWMA(18, m10   , 10  *slow);
    //USDCAD[start][1].z = VWMA(18, m15   , 15  *fast) - VWMA(18, m15   , 15  *slow);
    //USDCAD[start][1].w = VWMA(18, m30   , 30  *fast) - VWMA(18, m30   , 30  *slow);
    //USDCAD[start][2].x = VWMA(18, m45   , 45  *fast) - VWMA(18, m45   , 45  *slow);
    //USDCAD[start][2].y = VWMA(18, m60   , 60  *fast) - VWMA(18, m60   , 60  *slow);
    //USDCAD[start][2].z = VWMA(18, m120  , 120 *fast) - VWMA(18, m120  , 120 *slow);
    //USDCAD[start][2].w = VWMA(18, m180  , 180 *fast) - VWMA(18, m180  , 180 *slow);
    //USDCAD[start][3].x = VWMA(18, m240  , 240 *fast) - VWMA(18, m240  , 240 *slow);
    //USDCAD[start][3].y = VWMA(18, m360  , 360 *fast) - VWMA(18, m360  , 360 *slow);
    //USDCAD[start][3].z = VWMA(18, m720  , 720 *fast) - VWMA(18, m720  , 720 *slow);
    //USDCAD[start][3].w = VWMA(18, m1440 , 1440*fast) - VWMA(18, m1440 , 1440*slow);

    USDCHF[start][0].x = VWMA(19, m1    , 1   *fast) - VWMA(19, m1    , 1   *slow);
    //USDCHF[start][0].y = VWMA(19, m2    , 2   *fast) - VWMA(19, m2    , 2   *slow);
    //USDCHF[start][0].z = VWMA(19, m3    , 3   *fast) - VWMA(19, m3    , 3   *slow);
    //USDCHF[start][0].w = VWMA(19, m4    , 4   *fast) - VWMA(19, m4    , 4   *slow);
    //USDCHF[start][1].x = VWMA(19, m5    , 5   *fast) - VWMA(19, m5    , 5   *slow);
    //USDCHF[start][1].y = VWMA(19, m10   , 10  *fast) - VWMA(19, m10   , 10  *slow);
    //USDCHF[start][1].z = VWMA(19, m15   , 15  *fast) - VWMA(19, m15   , 15  *slow);
    //USDCHF[start][1].w = VWMA(19, m30   , 30  *fast) - VWMA(19, m30   , 30  *slow);
    //USDCHF[start][2].x = VWMA(19, m45   , 45  *fast) - VWMA(19, m45   , 45  *slow);
    //USDCHF[start][2].y = VWMA(19, m60   , 60  *fast) - VWMA(19, m60   , 60  *slow);
    //USDCHF[start][2].z = VWMA(19, m120  , 120 *fast) - VWMA(19, m120  , 120 *slow);
    //USDCHF[start][2].w = VWMA(19, m180  , 180 *fast) - VWMA(19, m180  , 180 *slow);
    //USDCHF[start][3].x = VWMA(19, m240  , 240 *fast) - VWMA(19, m240  , 240 *slow);
    //USDCHF[start][3].y = VWMA(19, m360  , 360 *fast) - VWMA(19, m360  , 360 *slow);
    //USDCHF[start][3].z = VWMA(19, m720  , 720 *fast) - VWMA(19, m720  , 720 *slow);
    //USDCHF[start][3].w = VWMA(19, m1440 , 1440*fast) - VWMA(19, m1440 , 1440*slow);

    USDJPY[start][0].x = VWMA(20, m1    , 1   *fast) - VWMA(20, m1    , 1   *slow);
    //USDJPY[start][0].y = VWMA(20, m2    , 2   *fast) - VWMA(20, m2    , 2   *slow);
    //USDJPY[start][0].z = VWMA(20, m3    , 3   *fast) - VWMA(20, m3    , 3   *slow);
    //USDJPY[start][0].w = VWMA(20, m4    , 4   *fast) - VWMA(20, m4    , 4   *slow);
    //USDJPY[start][1].x = VWMA(20, m5    , 5   *fast) - VWMA(20, m5    , 5   *slow);
    //USDJPY[start][1].y = VWMA(20, m10   , 10  *fast) - VWMA(20, m10   , 10  *slow);
    //USDJPY[start][1].z = VWMA(20, m15   , 15  *fast) - VWMA(20, m15   , 15  *slow);
    //USDJPY[start][1].w = VWMA(20, m30   , 30  *fast) - VWMA(20, m30   , 30  *slow);
    //USDJPY[start][2].x = VWMA(20, m45   , 45  *fast) - VWMA(20, m45   , 45  *slow);
    //USDJPY[start][2].y = VWMA(20, m60   , 60  *fast) - VWMA(20, m60   , 60  *slow);
    //USDJPY[start][2].z = VWMA(20, m120  , 120 *fast) - VWMA(20, m120  , 120 *slow);
    //USDJPY[start][2].w = VWMA(20, m180  , 180 *fast) - VWMA(20, m180  , 180 *slow);
    //USDJPY[start][3].x = VWMA(20, m240  , 240 *fast) - VWMA(20, m240  , 240 *slow);
    //USDJPY[start][3].y = VWMA(20, m360  , 360 *fast) - VWMA(20, m360  , 360 *slow);
    //USDJPY[start][3].z = VWMA(20, m720  , 720 *fast) - VWMA(20, m720  , 720 *slow);
    //USDJPY[start][3].w = VWMA(20, m1440 , 1440*fast) - VWMA(20, m1440 , 1440*slow);

}

void main() {
    MACD(index, 12, 26);

}
