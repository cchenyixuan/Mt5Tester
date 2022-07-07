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
/*
layout(std430, binding=2) buffer AUDCHF{
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
};

layout(std430, binding=3) buffer AUDJPY{
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
};

layout(std430, binding=4) buffer AUDUSD{
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
};
layout(std430, binding=5) buffer CADCHF{
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
};

layout(std430, binding=6) buffer CADJPY{
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
};
layout(std430, binding=7) buffer CHFJPY{
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
};
layout(std430, binding=8) buffer EURAUD{
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
};

layout(std430, binding=9) buffer EURCAD{
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
};
layout(std430, binding=10) buffer EURCHF{
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
};
layout(std430, binding=11) buffer EURGBP{
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
};
layout(std430, binding=12) buffer EURJPY{
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
};

layout(std430, binding=13) buffer EURUSD{
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
};
layout(std430, binding=14) buffer GBPAUD{
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
};
layout(std430, binding=15) buffer GBPCAD{
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
};

layout(std430, binding=16) buffer GBPCHF{
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
};

layout(std430, binding=17) buffer GBPJPY{
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
};

layout(std430, binding=18) buffer GBPUSD{
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
};

layout(std430, binding=19) buffer USDCAD{
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
};
layout(std430, binding=20) buffer USDCHF{
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
};
layout(std430, binding=21) buffer USDJPY{
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
*/
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
uniform int coin_pair_id;
uniform int time_interval;
void main()
{
    //gl_Position = vec4(Candle_id-960, candle_1[Candle_id].w+90, 0.0, 1.0);
    vertex_attri.index = Candle_id;

    vec4 current_candle = vec4(0.0, 0.0, 0.0, 0.0);
    vec4 last_candle = vec4(0.0, 0.0, 0.0, 0.0);
    switch (coin_pair_id){
        case 0:
        switch (time_interval){
            case 1:
            current_candle = AUDCAD_candle_1[Candle_id+offset];
            last_candle = AUDCAD_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = AUDCAD_candle_2[Candle_id+offset];
            last_candle = AUDCAD_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = AUDCAD_candle_3[Candle_id+offset];
            last_candle = AUDCAD_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = AUDCAD_candle_4[Candle_id+offset];
            last_candle = AUDCAD_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = AUDCAD_candle_5[Candle_id+offset];
            last_candle = AUDCAD_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = AUDCAD_candle_10[Candle_id+offset];
            last_candle = AUDCAD_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = AUDCAD_candle_15[Candle_id+offset];
            last_candle = AUDCAD_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = AUDCAD_candle_30[Candle_id+offset];
            last_candle = AUDCAD_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = AUDCAD_candle_45[Candle_id+offset];
            last_candle = AUDCAD_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = AUDCAD_candle_60[Candle_id+offset];
            last_candle = AUDCAD_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = AUDCAD_candle_120[Candle_id+offset];
            last_candle = AUDCAD_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = AUDCAD_candle_180[Candle_id+offset];
            last_candle = AUDCAD_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = AUDCAD_candle_240[Candle_id+offset];
            last_candle = AUDCAD_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = AUDCAD_candle_360[Candle_id+offset];
            last_candle = AUDCAD_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = AUDCAD_candle_720[Candle_id+offset];
            last_candle = AUDCAD_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = AUDCAD_candle_1440[Candle_id+offset];
            last_candle = AUDCAD_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 1:
        switch (time_interval){
            case 1:
            current_candle = AUDCHF_candle_1[Candle_id+offset];
            last_candle = AUDCHF_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = AUDCHF_candle_2[Candle_id+offset];
            last_candle = AUDCHF_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = AUDCHF_candle_3[Candle_id+offset];
            last_candle = AUDCHF_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = AUDCHF_candle_4[Candle_id+offset];
            last_candle = AUDCHF_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = AUDCHF_candle_5[Candle_id+offset];
            last_candle = AUDCHF_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = AUDCHF_candle_10[Candle_id+offset];
            last_candle = AUDCHF_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = AUDCHF_candle_15[Candle_id+offset];
            last_candle = AUDCHF_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = AUDCHF_candle_30[Candle_id+offset];
            last_candle = AUDCHF_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = AUDCHF_candle_45[Candle_id+offset];
            last_candle = AUDCHF_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = AUDCHF_candle_60[Candle_id+offset];
            last_candle = AUDCHF_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = AUDCHF_candle_120[Candle_id+offset];
            last_candle = AUDCHF_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = AUDCHF_candle_180[Candle_id+offset];
            last_candle = AUDCHF_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = AUDCHF_candle_240[Candle_id+offset];
            last_candle = AUDCHF_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = AUDCHF_candle_360[Candle_id+offset];
            last_candle = AUDCHF_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = AUDCHF_candle_720[Candle_id+offset];
            last_candle = AUDCHF_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = AUDCHF_candle_1440[Candle_id+offset];
            last_candle = AUDCHF_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 2:
        switch (time_interval){
            case 1:
            current_candle = AUDJPY_candle_1[Candle_id+offset];
            last_candle = AUDJPY_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = AUDJPY_candle_2[Candle_id+offset];
            last_candle = AUDJPY_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = AUDJPY_candle_3[Candle_id+offset];
            last_candle = AUDJPY_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = AUDJPY_candle_4[Candle_id+offset];
            last_candle = AUDJPY_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = AUDJPY_candle_5[Candle_id+offset];
            last_candle = AUDJPY_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = AUDJPY_candle_10[Candle_id+offset];
            last_candle = AUDJPY_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = AUDJPY_candle_15[Candle_id+offset];
            last_candle = AUDJPY_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = AUDJPY_candle_30[Candle_id+offset];
            last_candle = AUDJPY_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = AUDJPY_candle_45[Candle_id+offset];
            last_candle = AUDJPY_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = AUDJPY_candle_60[Candle_id+offset];
            last_candle = AUDJPY_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = AUDJPY_candle_120[Candle_id+offset];
            last_candle = AUDJPY_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = AUDJPY_candle_180[Candle_id+offset];
            last_candle = AUDJPY_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = AUDJPY_candle_240[Candle_id+offset];
            last_candle = AUDJPY_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = AUDJPY_candle_360[Candle_id+offset];
            last_candle = AUDJPY_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = AUDJPY_candle_720[Candle_id+offset];
            last_candle = AUDJPY_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = AUDJPY_candle_1440[Candle_id+offset];
            last_candle = AUDJPY_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 3:
        switch (time_interval){
            case 1:
            current_candle = AUDUSD_candle_1[Candle_id+offset];
            last_candle = AUDUSD_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = AUDUSD_candle_2[Candle_id+offset];
            last_candle = AUDUSD_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = AUDUSD_candle_3[Candle_id+offset];
            last_candle = AUDUSD_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = AUDUSD_candle_4[Candle_id+offset];
            last_candle = AUDUSD_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = AUDUSD_candle_5[Candle_id+offset];
            last_candle = AUDUSD_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = AUDUSD_candle_10[Candle_id+offset];
            last_candle = AUDUSD_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = AUDUSD_candle_15[Candle_id+offset];
            last_candle = AUDUSD_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = AUDUSD_candle_30[Candle_id+offset];
            last_candle = AUDUSD_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = AUDUSD_candle_45[Candle_id+offset];
            last_candle = AUDUSD_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = AUDUSD_candle_60[Candle_id+offset];
            last_candle = AUDUSD_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = AUDUSD_candle_120[Candle_id+offset];
            last_candle = AUDUSD_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = AUDUSD_candle_180[Candle_id+offset];
            last_candle = AUDUSD_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = AUDUSD_candle_240[Candle_id+offset];
            last_candle = AUDUSD_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = AUDUSD_candle_360[Candle_id+offset];
            last_candle = AUDUSD_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = AUDUSD_candle_720[Candle_id+offset];
            last_candle = AUDUSD_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = AUDUSD_candle_1440[Candle_id+offset];
            last_candle = AUDUSD_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 4:
        switch (time_interval){
            case 1:
            current_candle = CADCHF_candle_1[Candle_id+offset];
            last_candle = CADCHF_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = CADCHF_candle_2[Candle_id+offset];
            last_candle = CADCHF_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = CADCHF_candle_3[Candle_id+offset];
            last_candle = CADCHF_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = CADCHF_candle_4[Candle_id+offset];
            last_candle = CADCHF_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = CADCHF_candle_5[Candle_id+offset];
            last_candle = CADCHF_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = CADCHF_candle_10[Candle_id+offset];
            last_candle = CADCHF_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = CADCHF_candle_15[Candle_id+offset];
            last_candle = CADCHF_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = CADCHF_candle_30[Candle_id+offset];
            last_candle = CADCHF_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = CADCHF_candle_45[Candle_id+offset];
            last_candle = CADCHF_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = CADCHF_candle_60[Candle_id+offset];
            last_candle = CADCHF_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = CADCHF_candle_120[Candle_id+offset];
            last_candle = CADCHF_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = CADCHF_candle_180[Candle_id+offset];
            last_candle = CADCHF_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = CADCHF_candle_240[Candle_id+offset];
            last_candle = CADCHF_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = CADCHF_candle_360[Candle_id+offset];
            last_candle = CADCHF_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = CADCHF_candle_720[Candle_id+offset];
            last_candle = CADCHF_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = CADCHF_candle_1440[Candle_id+offset];
            last_candle = CADCHF_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 5:
        switch (time_interval){
            case 1:
            current_candle = CADJPY_candle_1[Candle_id+offset];
            last_candle = CADJPY_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = CADJPY_candle_2[Candle_id+offset];
            last_candle = CADJPY_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = CADJPY_candle_3[Candle_id+offset];
            last_candle = CADJPY_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = CADJPY_candle_4[Candle_id+offset];
            last_candle = CADJPY_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = CADJPY_candle_5[Candle_id+offset];
            last_candle = CADJPY_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = CADJPY_candle_10[Candle_id+offset];
            last_candle = CADJPY_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = CADJPY_candle_15[Candle_id+offset];
            last_candle = CADJPY_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = CADJPY_candle_30[Candle_id+offset];
            last_candle = CADJPY_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = CADJPY_candle_45[Candle_id+offset];
            last_candle = CADJPY_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = CADJPY_candle_60[Candle_id+offset];
            last_candle = CADJPY_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = CADJPY_candle_120[Candle_id+offset];
            last_candle = CADJPY_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = CADJPY_candle_180[Candle_id+offset];
            last_candle = CADJPY_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = CADJPY_candle_240[Candle_id+offset];
            last_candle = CADJPY_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = CADJPY_candle_360[Candle_id+offset];
            last_candle = CADJPY_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = CADJPY_candle_720[Candle_id+offset];
            last_candle = CADJPY_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = CADJPY_candle_1440[Candle_id+offset];
            last_candle = CADJPY_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 6:
        switch (time_interval){
            case 1:
            current_candle = CHFJPY_candle_1[Candle_id+offset];
            last_candle = CHFJPY_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = CHFJPY_candle_2[Candle_id+offset];
            last_candle = CHFJPY_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = CHFJPY_candle_3[Candle_id+offset];
            last_candle = CHFJPY_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = CHFJPY_candle_4[Candle_id+offset];
            last_candle = CHFJPY_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = CHFJPY_candle_5[Candle_id+offset];
            last_candle = CHFJPY_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = CHFJPY_candle_10[Candle_id+offset];
            last_candle = CHFJPY_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = CHFJPY_candle_15[Candle_id+offset];
            last_candle = CHFJPY_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = CHFJPY_candle_30[Candle_id+offset];
            last_candle = CHFJPY_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = CHFJPY_candle_45[Candle_id+offset];
            last_candle = CHFJPY_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = CHFJPY_candle_60[Candle_id+offset];
            last_candle = CHFJPY_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = CHFJPY_candle_120[Candle_id+offset];
            last_candle = CHFJPY_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = CHFJPY_candle_180[Candle_id+offset];
            last_candle = CHFJPY_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = CHFJPY_candle_240[Candle_id+offset];
            last_candle = CHFJPY_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = CHFJPY_candle_360[Candle_id+offset];
            last_candle = CHFJPY_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = CHFJPY_candle_720[Candle_id+offset];
            last_candle = CHFJPY_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = CHFJPY_candle_1440[Candle_id+offset];
            last_candle = CHFJPY_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 7:
        switch (time_interval){
            case 1:
            current_candle = EURAUD_candle_1[Candle_id+offset];
            last_candle = EURAUD_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = EURAUD_candle_2[Candle_id+offset];
            last_candle = EURAUD_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = EURAUD_candle_3[Candle_id+offset];
            last_candle = EURAUD_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = EURAUD_candle_4[Candle_id+offset];
            last_candle = EURAUD_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = EURAUD_candle_5[Candle_id+offset];
            last_candle = EURAUD_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = EURAUD_candle_10[Candle_id+offset];
            last_candle = EURAUD_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = EURAUD_candle_15[Candle_id+offset];
            last_candle = EURAUD_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = EURAUD_candle_30[Candle_id+offset];
            last_candle = EURAUD_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = EURAUD_candle_45[Candle_id+offset];
            last_candle = EURAUD_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = EURAUD_candle_60[Candle_id+offset];
            last_candle = EURAUD_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = EURAUD_candle_120[Candle_id+offset];
            last_candle = EURAUD_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = EURAUD_candle_180[Candle_id+offset];
            last_candle = EURAUD_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = EURAUD_candle_240[Candle_id+offset];
            last_candle = EURAUD_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = EURAUD_candle_360[Candle_id+offset];
            last_candle = EURAUD_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = EURAUD_candle_720[Candle_id+offset];
            last_candle = EURAUD_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = EURAUD_candle_1440[Candle_id+offset];
            last_candle = EURAUD_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 8:
        switch (time_interval){
            case 1:
            current_candle = EURCAD_candle_1[Candle_id+offset];
            last_candle = EURCAD_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = EURCAD_candle_2[Candle_id+offset];
            last_candle = EURCAD_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = EURCAD_candle_3[Candle_id+offset];
            last_candle = EURCAD_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = EURCAD_candle_4[Candle_id+offset];
            last_candle = EURCAD_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = EURCAD_candle_5[Candle_id+offset];
            last_candle = EURCAD_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = EURCAD_candle_10[Candle_id+offset];
            last_candle = EURCAD_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = EURCAD_candle_15[Candle_id+offset];
            last_candle = EURCAD_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = EURCAD_candle_30[Candle_id+offset];
            last_candle = EURCAD_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = EURCAD_candle_45[Candle_id+offset];
            last_candle = EURCAD_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = EURCAD_candle_60[Candle_id+offset];
            last_candle = EURCAD_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = EURCAD_candle_120[Candle_id+offset];
            last_candle = EURCAD_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = EURCAD_candle_180[Candle_id+offset];
            last_candle = EURCAD_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = EURCAD_candle_240[Candle_id+offset];
            last_candle = EURCAD_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = EURCAD_candle_360[Candle_id+offset];
            last_candle = EURCAD_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = EURCAD_candle_720[Candle_id+offset];
            last_candle = EURCAD_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = EURCAD_candle_1440[Candle_id+offset];
            last_candle = EURCAD_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 9:
        switch (time_interval){
            case 1:
            current_candle = EURCHF_candle_1[Candle_id+offset];
            last_candle = EURCHF_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = EURCHF_candle_2[Candle_id+offset];
            last_candle = EURCHF_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = EURCHF_candle_3[Candle_id+offset];
            last_candle = EURCHF_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = EURCHF_candle_4[Candle_id+offset];
            last_candle = EURCHF_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = EURCHF_candle_5[Candle_id+offset];
            last_candle = EURCHF_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = EURCHF_candle_10[Candle_id+offset];
            last_candle = EURCHF_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = EURCHF_candle_15[Candle_id+offset];
            last_candle = EURCHF_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = EURCHF_candle_30[Candle_id+offset];
            last_candle = EURCHF_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = EURCHF_candle_45[Candle_id+offset];
            last_candle = EURCHF_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = EURCHF_candle_60[Candle_id+offset];
            last_candle = EURCHF_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = EURCHF_candle_120[Candle_id+offset];
            last_candle = EURCHF_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = EURCHF_candle_180[Candle_id+offset];
            last_candle = EURCHF_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = EURCHF_candle_240[Candle_id+offset];
            last_candle = EURCHF_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = EURCHF_candle_360[Candle_id+offset];
            last_candle = EURCHF_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = EURCHF_candle_720[Candle_id+offset];
            last_candle = EURCHF_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = EURCHF_candle_1440[Candle_id+offset];
            last_candle = EURCHF_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 10:
        switch (time_interval){
            case 1:
            current_candle = EURGBP_candle_1[Candle_id+offset];
            last_candle = EURGBP_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = EURGBP_candle_2[Candle_id+offset];
            last_candle = EURGBP_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = EURGBP_candle_3[Candle_id+offset];
            last_candle = EURGBP_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = EURGBP_candle_4[Candle_id+offset];
            last_candle = EURGBP_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = EURGBP_candle_5[Candle_id+offset];
            last_candle = EURGBP_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = EURGBP_candle_10[Candle_id+offset];
            last_candle = EURGBP_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = EURGBP_candle_15[Candle_id+offset];
            last_candle = EURGBP_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = EURGBP_candle_30[Candle_id+offset];
            last_candle = EURGBP_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = EURGBP_candle_45[Candle_id+offset];
            last_candle = EURGBP_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = EURGBP_candle_60[Candle_id+offset];
            last_candle = EURGBP_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = EURGBP_candle_120[Candle_id+offset];
            last_candle = EURGBP_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = EURGBP_candle_180[Candle_id+offset];
            last_candle = EURGBP_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = EURGBP_candle_240[Candle_id+offset];
            last_candle = EURGBP_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = EURGBP_candle_360[Candle_id+offset];
            last_candle = EURGBP_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = EURGBP_candle_720[Candle_id+offset];
            last_candle = EURGBP_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = EURGBP_candle_1440[Candle_id+offset];
            last_candle = EURGBP_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 11:
        switch (time_interval){
            case 1:
            current_candle = EURJPY_candle_1[Candle_id+offset];
            last_candle = EURJPY_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = EURJPY_candle_2[Candle_id+offset];
            last_candle = EURJPY_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = EURJPY_candle_3[Candle_id+offset];
            last_candle = EURJPY_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = EURJPY_candle_4[Candle_id+offset];
            last_candle = EURJPY_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = EURJPY_candle_5[Candle_id+offset];
            last_candle = EURJPY_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = EURJPY_candle_10[Candle_id+offset];
            last_candle = EURJPY_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = EURJPY_candle_15[Candle_id+offset];
            last_candle = EURJPY_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = EURJPY_candle_30[Candle_id+offset];
            last_candle = EURJPY_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = EURJPY_candle_45[Candle_id+offset];
            last_candle = EURJPY_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = EURJPY_candle_60[Candle_id+offset];
            last_candle = EURJPY_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = EURJPY_candle_120[Candle_id+offset];
            last_candle = EURJPY_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = EURJPY_candle_180[Candle_id+offset];
            last_candle = EURJPY_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = EURJPY_candle_240[Candle_id+offset];
            last_candle = EURJPY_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = EURJPY_candle_360[Candle_id+offset];
            last_candle = EURJPY_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = EURJPY_candle_720[Candle_id+offset];
            last_candle = EURJPY_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = EURJPY_candle_1440[Candle_id+offset];
            last_candle = EURJPY_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 12:
        switch (time_interval){
            case 1:
            current_candle = EURUSD_candle_1[Candle_id+offset];
            last_candle = EURUSD_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = EURUSD_candle_2[Candle_id+offset];
            last_candle = EURUSD_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = EURUSD_candle_3[Candle_id+offset];
            last_candle = EURUSD_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = EURUSD_candle_4[Candle_id+offset];
            last_candle = EURUSD_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = EURUSD_candle_5[Candle_id+offset];
            last_candle = EURUSD_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = EURUSD_candle_10[Candle_id+offset];
            last_candle = EURUSD_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = EURUSD_candle_15[Candle_id+offset];
            last_candle = EURUSD_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = EURUSD_candle_30[Candle_id+offset];
            last_candle = EURUSD_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = EURUSD_candle_45[Candle_id+offset];
            last_candle = EURUSD_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = EURUSD_candle_60[Candle_id+offset];
            last_candle = EURUSD_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = EURUSD_candle_120[Candle_id+offset];
            last_candle = EURUSD_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = EURUSD_candle_180[Candle_id+offset];
            last_candle = EURUSD_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = EURUSD_candle_240[Candle_id+offset];
            last_candle = EURUSD_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = EURUSD_candle_360[Candle_id+offset];
            last_candle = EURUSD_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = EURUSD_candle_720[Candle_id+offset];
            last_candle = EURUSD_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = EURUSD_candle_1440[Candle_id+offset];
            last_candle = EURUSD_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 13:
        switch (time_interval){
            case 1:
            current_candle = GBPAUD_candle_1[Candle_id+offset];
            last_candle = GBPAUD_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = GBPAUD_candle_2[Candle_id+offset];
            last_candle = GBPAUD_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = GBPAUD_candle_3[Candle_id+offset];
            last_candle = GBPAUD_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = GBPAUD_candle_4[Candle_id+offset];
            last_candle = GBPAUD_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = GBPAUD_candle_5[Candle_id+offset];
            last_candle = GBPAUD_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = GBPAUD_candle_10[Candle_id+offset];
            last_candle = GBPAUD_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = GBPAUD_candle_15[Candle_id+offset];
            last_candle = GBPAUD_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = GBPAUD_candle_30[Candle_id+offset];
            last_candle = GBPAUD_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = GBPAUD_candle_45[Candle_id+offset];
            last_candle = GBPAUD_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = GBPAUD_candle_60[Candle_id+offset];
            last_candle = GBPAUD_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = GBPAUD_candle_120[Candle_id+offset];
            last_candle = GBPAUD_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = GBPAUD_candle_180[Candle_id+offset];
            last_candle = GBPAUD_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = GBPAUD_candle_240[Candle_id+offset];
            last_candle = GBPAUD_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = GBPAUD_candle_360[Candle_id+offset];
            last_candle = GBPAUD_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = GBPAUD_candle_720[Candle_id+offset];
            last_candle = GBPAUD_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = GBPAUD_candle_1440[Candle_id+offset];
            last_candle = GBPAUD_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 14:
        switch (time_interval){
            case 1:
            current_candle = GBPCAD_candle_1[Candle_id+offset];
            last_candle = GBPCAD_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = GBPCAD_candle_2[Candle_id+offset];
            last_candle = GBPCAD_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = GBPCAD_candle_3[Candle_id+offset];
            last_candle = GBPCAD_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = GBPCAD_candle_4[Candle_id+offset];
            last_candle = GBPCAD_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = GBPCAD_candle_5[Candle_id+offset];
            last_candle = GBPCAD_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = GBPCAD_candle_10[Candle_id+offset];
            last_candle = GBPCAD_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = GBPCAD_candle_15[Candle_id+offset];
            last_candle = GBPCAD_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = GBPCAD_candle_30[Candle_id+offset];
            last_candle = GBPCAD_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = GBPCAD_candle_45[Candle_id+offset];
            last_candle = GBPCAD_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = GBPCAD_candle_60[Candle_id+offset];
            last_candle = GBPCAD_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = GBPCAD_candle_120[Candle_id+offset];
            last_candle = GBPCAD_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = GBPCAD_candle_180[Candle_id+offset];
            last_candle = GBPCAD_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = GBPCAD_candle_240[Candle_id+offset];
            last_candle = GBPCAD_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = GBPCAD_candle_360[Candle_id+offset];
            last_candle = GBPCAD_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = GBPCAD_candle_720[Candle_id+offset];
            last_candle = GBPCAD_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = GBPCAD_candle_1440[Candle_id+offset];
            last_candle = GBPCAD_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 15:
        switch (time_interval){
            case 1:
            current_candle = GBPCHF_candle_1[Candle_id+offset];
            last_candle = GBPCHF_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = GBPCHF_candle_2[Candle_id+offset];
            last_candle = GBPCHF_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = GBPCHF_candle_3[Candle_id+offset];
            last_candle = GBPCHF_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = GBPCHF_candle_4[Candle_id+offset];
            last_candle = GBPCHF_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = GBPCHF_candle_5[Candle_id+offset];
            last_candle = GBPCHF_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = GBPCHF_candle_10[Candle_id+offset];
            last_candle = GBPCHF_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = GBPCHF_candle_15[Candle_id+offset];
            last_candle = GBPCHF_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = GBPCHF_candle_30[Candle_id+offset];
            last_candle = GBPCHF_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = GBPCHF_candle_45[Candle_id+offset];
            last_candle = GBPCHF_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = GBPCHF_candle_60[Candle_id+offset];
            last_candle = GBPCHF_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = GBPCHF_candle_120[Candle_id+offset];
            last_candle = GBPCHF_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = GBPCHF_candle_180[Candle_id+offset];
            last_candle = GBPCHF_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = GBPCHF_candle_240[Candle_id+offset];
            last_candle = GBPCHF_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = GBPCHF_candle_360[Candle_id+offset];
            last_candle = GBPCHF_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = GBPCHF_candle_720[Candle_id+offset];
            last_candle = GBPCHF_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = GBPCHF_candle_1440[Candle_id+offset];
            last_candle = GBPCHF_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 16:
        switch (time_interval){
            case 1:
            current_candle = GBPJPY_candle_1[Candle_id+offset];
            last_candle = GBPJPY_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = GBPJPY_candle_2[Candle_id+offset];
            last_candle = GBPJPY_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = GBPJPY_candle_3[Candle_id+offset];
            last_candle = GBPJPY_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = GBPJPY_candle_4[Candle_id+offset];
            last_candle = GBPJPY_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = GBPJPY_candle_5[Candle_id+offset];
            last_candle = GBPJPY_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = GBPJPY_candle_10[Candle_id+offset];
            last_candle = GBPJPY_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = GBPJPY_candle_15[Candle_id+offset];
            last_candle = GBPJPY_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = GBPJPY_candle_30[Candle_id+offset];
            last_candle = GBPJPY_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = GBPJPY_candle_45[Candle_id+offset];
            last_candle = GBPJPY_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = GBPJPY_candle_60[Candle_id+offset];
            last_candle = GBPJPY_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = GBPJPY_candle_120[Candle_id+offset];
            last_candle = GBPJPY_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = GBPJPY_candle_180[Candle_id+offset];
            last_candle = GBPJPY_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = GBPJPY_candle_240[Candle_id+offset];
            last_candle = GBPJPY_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = GBPJPY_candle_360[Candle_id+offset];
            last_candle = GBPJPY_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = GBPJPY_candle_720[Candle_id+offset];
            last_candle = GBPJPY_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = GBPJPY_candle_1440[Candle_id+offset];
            last_candle = GBPJPY_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 17:
        switch (time_interval){
            case 1:
            current_candle = GBPUSD_candle_1[Candle_id+offset];
            last_candle = GBPUSD_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = GBPUSD_candle_2[Candle_id+offset];
            last_candle = GBPUSD_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = GBPUSD_candle_3[Candle_id+offset];
            last_candle = GBPUSD_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = GBPUSD_candle_4[Candle_id+offset];
            last_candle = GBPUSD_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = GBPUSD_candle_5[Candle_id+offset];
            last_candle = GBPUSD_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = GBPUSD_candle_10[Candle_id+offset];
            last_candle = GBPUSD_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = GBPUSD_candle_15[Candle_id+offset];
            last_candle = GBPUSD_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = GBPUSD_candle_30[Candle_id+offset];
            last_candle = GBPUSD_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = GBPUSD_candle_45[Candle_id+offset];
            last_candle = GBPUSD_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = GBPUSD_candle_60[Candle_id+offset];
            last_candle = GBPUSD_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = GBPUSD_candle_120[Candle_id+offset];
            last_candle = GBPUSD_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = GBPUSD_candle_180[Candle_id+offset];
            last_candle = GBPUSD_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = GBPUSD_candle_240[Candle_id+offset];
            last_candle = GBPUSD_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = GBPUSD_candle_360[Candle_id+offset];
            last_candle = GBPUSD_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = GBPUSD_candle_720[Candle_id+offset];
            last_candle = GBPUSD_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = GBPUSD_candle_1440[Candle_id+offset];
            last_candle = GBPUSD_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 18:
        switch (time_interval){
            case 1:
            current_candle = USDCAD_candle_1[Candle_id+offset];
            last_candle = USDCAD_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = USDCAD_candle_2[Candle_id+offset];
            last_candle = USDCAD_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = USDCAD_candle_3[Candle_id+offset];
            last_candle = USDCAD_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = USDCAD_candle_4[Candle_id+offset];
            last_candle = USDCAD_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = USDCAD_candle_5[Candle_id+offset];
            last_candle = USDCAD_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = USDCAD_candle_10[Candle_id+offset];
            last_candle = USDCAD_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = USDCAD_candle_15[Candle_id+offset];
            last_candle = USDCAD_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = USDCAD_candle_30[Candle_id+offset];
            last_candle = USDCAD_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = USDCAD_candle_45[Candle_id+offset];
            last_candle = USDCAD_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = USDCAD_candle_60[Candle_id+offset];
            last_candle = USDCAD_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = USDCAD_candle_120[Candle_id+offset];
            last_candle = USDCAD_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = USDCAD_candle_180[Candle_id+offset];
            last_candle = USDCAD_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = USDCAD_candle_240[Candle_id+offset];
            last_candle = USDCAD_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = USDCAD_candle_360[Candle_id+offset];
            last_candle = USDCAD_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = USDCAD_candle_720[Candle_id+offset];
            last_candle = USDCAD_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = USDCAD_candle_1440[Candle_id+offset];
            last_candle = USDCAD_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 19:
        switch (time_interval){
            case 1:
            current_candle = USDCHF_candle_1[Candle_id+offset];
            last_candle = USDCHF_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = USDCHF_candle_2[Candle_id+offset];
            last_candle = USDCHF_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = USDCHF_candle_3[Candle_id+offset];
            last_candle = USDCHF_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = USDCHF_candle_4[Candle_id+offset];
            last_candle = USDCHF_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = USDCHF_candle_5[Candle_id+offset];
            last_candle = USDCHF_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = USDCHF_candle_10[Candle_id+offset];
            last_candle = USDCHF_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = USDCHF_candle_15[Candle_id+offset];
            last_candle = USDCHF_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = USDCHF_candle_30[Candle_id+offset];
            last_candle = USDCHF_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = USDCHF_candle_45[Candle_id+offset];
            last_candle = USDCHF_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = USDCHF_candle_60[Candle_id+offset];
            last_candle = USDCHF_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = USDCHF_candle_120[Candle_id+offset];
            last_candle = USDCHF_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = USDCHF_candle_180[Candle_id+offset];
            last_candle = USDCHF_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = USDCHF_candle_240[Candle_id+offset];
            last_candle = USDCHF_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = USDCHF_candle_360[Candle_id+offset];
            last_candle = USDCHF_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = USDCHF_candle_720[Candle_id+offset];
            last_candle = USDCHF_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = USDCHF_candle_1440[Candle_id+offset];
            last_candle = USDCHF_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
        case 20:
        switch (time_interval){
            case 1:
            current_candle = USDJPY_candle_1[Candle_id+offset];
            last_candle = USDJPY_candle_1[Candle_id+offset-1];
            break;
            case 2:
            current_candle = USDJPY_candle_2[Candle_id+offset];
            last_candle = USDJPY_candle_2[Candle_id+offset-1];
            break;
            case 3:
            current_candle = USDJPY_candle_3[Candle_id+offset];
            last_candle = USDJPY_candle_3[Candle_id+offset-1];
            break;
            case 4:
            current_candle = USDJPY_candle_4[Candle_id+offset];
            last_candle = USDJPY_candle_4[Candle_id+offset-1];
            break;
            case 5:
            current_candle = USDJPY_candle_5[Candle_id+offset];
            last_candle = USDJPY_candle_5[Candle_id+offset-1];
            break;
            case 10:
            current_candle = USDJPY_candle_10[Candle_id+offset];
            last_candle = USDJPY_candle_10[Candle_id+offset-1];
            break;
            case 15:
            current_candle = USDJPY_candle_15[Candle_id+offset];
            last_candle = USDJPY_candle_15[Candle_id+offset-1];
            break;
            case 30:
            current_candle = USDJPY_candle_30[Candle_id+offset];
            last_candle = USDJPY_candle_30[Candle_id+offset-1];
            break;
            case 45:
            current_candle = USDJPY_candle_45[Candle_id+offset];
            last_candle = USDJPY_candle_45[Candle_id+offset-1];
            break;
            case 60:
            current_candle = USDJPY_candle_60[Candle_id+offset];
            last_candle = USDJPY_candle_60[Candle_id+offset-1];
            break;
            case 120:
            current_candle = USDJPY_candle_120[Candle_id+offset];
            last_candle = USDJPY_candle_120[Candle_id+offset-1];
            break;
            case 180:
            current_candle = USDJPY_candle_180[Candle_id+offset];
            last_candle = USDJPY_candle_180[Candle_id+offset-1];
            break;
            case 240:
            current_candle = USDJPY_candle_240[Candle_id+offset];
            last_candle = USDJPY_candle_240[Candle_id+offset-1];
            break;
            case 360:
            current_candle = USDJPY_candle_360[Candle_id+offset];
            last_candle = USDJPY_candle_360[Candle_id+offset-1];
            break;
            case 720:
            current_candle = USDJPY_candle_720[Candle_id+offset];
            last_candle = USDJPY_candle_720[Candle_id+offset-1];
            break;
            case 1440:
            current_candle = USDJPY_candle_1440[Candle_id+offset];
            last_candle = USDJPY_candle_1440[Candle_id+offset-1];
            break;
        }
        break;
    }

    vertex_attri.pos = vec4(Candle_id*10, current_candle.w, 0.0, 1.0);  // -960--
    if(current_candle.x > current_candle.w){
        vertex_attri.market = vec4(current_candle.zwxy);
    }
    else{
        vertex_attri.market = vec4(current_candle.zxwy);
    }
    if(Candle_id+offset==0){
        vertex_attri.V_Color = vec4(0.0, 1.0, 0.0, 1.0);
    }
    else{
        if(current_candle.w>last_candle.w){
            vertex_attri.V_Color = vec4(0.0, 1.0, 0.0, 1.0);
        }
        else {
            vertex_attri.V_Color = vec4(1.0, 0.0, 0.0, 1.0);
        }
    }

}
