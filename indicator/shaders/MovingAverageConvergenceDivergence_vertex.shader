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

out VertexAttri{
    vec4 vertex_data;  // dif, dea, ddif, ddea
    int index;
}vertex_attri;

uniform mat4 projection;
uniform mat4 scaling;
uniform mat4 translation;
uniform int offset;
uniform int coin_pair_id;
uniform int time_length;

void main(){
    float dif=0.0;
    float dea=0.0;
    float d_dif=0.0;
    float d_dea=0.0;
    int index=0;
    index = max(9, offset+Candle_id);
    vertex_attri.index = Candle_id;
    switch (coin_pair_id){
        case 0:
        switch (time_length){
            case 1:
            dif = AUDCAD[index][0].x;
            d_dif = AUDCAD[index][0].x - AUDCAD[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][0].x/9;
            }
            d_dea = AUDCAD[index][0].x/9 - AUDCAD[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = AUDCAD[index][0].y;
            d_dif = AUDCAD[index][0].y - AUDCAD[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][0].y/9;
            }
            d_dea = AUDCAD[index][0].y/9 - AUDCAD[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = AUDCAD[index][0].z;
            d_dif = AUDCAD[index][0].z - AUDCAD[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][0].z/9;
            }
            d_dea = AUDCAD[index][0].z/9 - AUDCAD[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = AUDCAD[index][0].w;
            d_dif = AUDCAD[index][0].w - AUDCAD[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][0].w/9;
            }
            d_dea = AUDCAD[index][0].w/9 - AUDCAD[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = AUDCAD[index][1].x;
            d_dif = AUDCAD[index][1].x - AUDCAD[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][1].x/9;
            }
            d_dea = AUDCAD[index][1].x/9 - AUDCAD[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = AUDCAD[index][1].y;
            d_dif = AUDCAD[index][1].y - AUDCAD[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][1].y/9;
            }
            d_dea = AUDCAD[index][1].y/9 - AUDCAD[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = AUDCAD[index][1].z;
            d_dif = AUDCAD[index][1].z - AUDCAD[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][1].z/9;
            }
            d_dea = AUDCAD[index][1].z/9 - AUDCAD[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = AUDCAD[index][1].w;
            d_dif = AUDCAD[index][1].w - AUDCAD[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][1].w/9;
            }
            d_dea = AUDCAD[index][1].w/9 - AUDCAD[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = AUDCAD[index][2].x;
            d_dif = AUDCAD[index][2].x - AUDCAD[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][2].x/9;
            }
            d_dea = AUDCAD[index][2].x/9 - AUDCAD[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = AUDCAD[index][2].y;
            d_dif = AUDCAD[index][2].y - AUDCAD[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][2].y/9;
            }
            d_dea = AUDCAD[index][2].y/9 - AUDCAD[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = AUDCAD[index][2].z;
            d_dif = AUDCAD[index][2].z - AUDCAD[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][2].z/9;
            }
            d_dea = AUDCAD[index][2].z/9 - AUDCAD[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = AUDCAD[index][2].w;
            d_dif = AUDCAD[index][2].w - AUDCAD[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][2].w/9;
            }
            d_dea = AUDCAD[index][2].w/9 - AUDCAD[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = AUDCAD[index][3].x;
            d_dif = AUDCAD[index][3].x - AUDCAD[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][3].x/9;
            }
            d_dea = AUDCAD[index][3].x/9 - AUDCAD[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = AUDCAD[index][3].y;
            d_dif = AUDCAD[index][3].y - AUDCAD[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][3].y/9;
            }
            d_dea = AUDCAD[index][3].y/9 - AUDCAD[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = AUDCAD[index][3].z;
            d_dif = AUDCAD[index][3].z - AUDCAD[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][3].z/9;
            }
            d_dea = AUDCAD[index][3].z/9 - AUDCAD[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = AUDCAD[index][3].w;
            d_dif = AUDCAD[index][3].w - AUDCAD[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += AUDCAD[index-j][3].w/9;
            }
            d_dea = AUDCAD[index][3].w/9 - AUDCAD[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 1:
        switch (time_length){
            case 1:
            dif = AUDCHF[index][0].x;
            d_dif = AUDCHF[index][0].x - AUDCHF[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][0].x/9;
            }
            d_dea = AUDCHF[index][0].x/9 - AUDCHF[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = AUDCHF[index][0].y;
            d_dif = AUDCHF[index][0].y - AUDCHF[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][0].y/9;
            }
            d_dea = AUDCHF[index][0].y/9 - AUDCHF[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = AUDCHF[index][0].z;
            d_dif = AUDCHF[index][0].z - AUDCHF[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][0].z/9;
            }
            d_dea = AUDCHF[index][0].z/9 - AUDCHF[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = AUDCHF[index][0].w;
            d_dif = AUDCHF[index][0].w - AUDCHF[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][0].w/9;
            }
            d_dea = AUDCHF[index][0].w/9 - AUDCHF[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = AUDCHF[index][1].x;
            d_dif = AUDCHF[index][1].x - AUDCHF[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][1].x/9;
            }
            d_dea = AUDCHF[index][1].x/9 - AUDCHF[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = AUDCHF[index][1].y;
            d_dif = AUDCHF[index][1].y - AUDCHF[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][1].y/9;
            }
            d_dea = AUDCHF[index][1].y/9 - AUDCHF[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = AUDCHF[index][1].z;
            d_dif = AUDCHF[index][1].z - AUDCHF[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][1].z/9;
            }
            d_dea = AUDCHF[index][1].z/9 - AUDCHF[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = AUDCHF[index][1].w;
            d_dif = AUDCHF[index][1].w - AUDCHF[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][1].w/9;
            }
            d_dea = AUDCHF[index][1].w/9 - AUDCHF[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = AUDCHF[index][2].x;
            d_dif = AUDCHF[index][2].x - AUDCHF[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][2].x/9;
            }
            d_dea = AUDCHF[index][2].x/9 - AUDCHF[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = AUDCHF[index][2].y;
            d_dif = AUDCHF[index][2].y - AUDCHF[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][2].y/9;
            }
            d_dea = AUDCHF[index][2].y/9 - AUDCHF[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = AUDCHF[index][2].z;
            d_dif = AUDCHF[index][2].z - AUDCHF[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][2].z/9;
            }
            d_dea = AUDCHF[index][2].z/9 - AUDCHF[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = AUDCHF[index][2].w;
            d_dif = AUDCHF[index][2].w - AUDCHF[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][2].w/9;
            }
            d_dea = AUDCHF[index][2].w/9 - AUDCHF[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = AUDCHF[index][3].x;
            d_dif = AUDCHF[index][3].x - AUDCHF[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][3].x/9;
            }
            d_dea = AUDCHF[index][3].x/9 - AUDCHF[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = AUDCHF[index][3].y;
            d_dif = AUDCHF[index][3].y - AUDCHF[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][3].y/9;
            }
            d_dea = AUDCHF[index][3].y/9 - AUDCHF[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = AUDCHF[index][3].z;
            d_dif = AUDCHF[index][3].z - AUDCHF[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][3].z/9;
            }
            d_dea = AUDCHF[index][3].z/9 - AUDCHF[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = AUDCHF[index][3].w;
            d_dif = AUDCHF[index][3].w - AUDCHF[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += AUDCHF[index-j][3].w/9;
            }
            d_dea = AUDCHF[index][3].w/9 - AUDCHF[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 2:
        switch (time_length){
            case 1:
            dif = AUDJPY[index][0].x;
            d_dif = AUDJPY[index][0].x - AUDJPY[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][0].x/9;
            }
            d_dea = AUDJPY[index][0].x/9 - AUDJPY[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = AUDJPY[index][0].y;
            d_dif = AUDJPY[index][0].y - AUDJPY[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][0].y/9;
            }
            d_dea = AUDJPY[index][0].y/9 - AUDJPY[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = AUDJPY[index][0].z;
            d_dif = AUDJPY[index][0].z - AUDJPY[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][0].z/9;
            }
            d_dea = AUDJPY[index][0].z/9 - AUDJPY[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = AUDJPY[index][0].w;
            d_dif = AUDJPY[index][0].w - AUDJPY[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][0].w/9;
            }
            d_dea = AUDJPY[index][0].w/9 - AUDJPY[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = AUDJPY[index][1].x;
            d_dif = AUDJPY[index][1].x - AUDJPY[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][1].x/9;
            }
            d_dea = AUDJPY[index][1].x/9 - AUDJPY[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = AUDJPY[index][1].y;
            d_dif = AUDJPY[index][1].y - AUDJPY[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][1].y/9;
            }
            d_dea = AUDJPY[index][1].y/9 - AUDJPY[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = AUDJPY[index][1].z;
            d_dif = AUDJPY[index][1].z - AUDJPY[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][1].z/9;
            }
            d_dea = AUDJPY[index][1].z/9 - AUDJPY[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = AUDJPY[index][1].w;
            d_dif = AUDJPY[index][1].w - AUDJPY[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][1].w/9;
            }
            d_dea = AUDJPY[index][1].w/9 - AUDJPY[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = AUDJPY[index][2].x;
            d_dif = AUDJPY[index][2].x - AUDJPY[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][2].x/9;
            }
            d_dea = AUDJPY[index][2].x/9 - AUDJPY[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = AUDJPY[index][2].y;
            d_dif = AUDJPY[index][2].y - AUDJPY[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][2].y/9;
            }
            d_dea = AUDJPY[index][2].y/9 - AUDJPY[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = AUDJPY[index][2].z;
            d_dif = AUDJPY[index][2].z - AUDJPY[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][2].z/9;
            }
            d_dea = AUDJPY[index][2].z/9 - AUDJPY[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = AUDJPY[index][2].w;
            d_dif = AUDJPY[index][2].w - AUDJPY[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][2].w/9;
            }
            d_dea = AUDJPY[index][2].w/9 - AUDJPY[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = AUDJPY[index][3].x;
            d_dif = AUDJPY[index][3].x - AUDJPY[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][3].x/9;
            }
            d_dea = AUDJPY[index][3].x/9 - AUDJPY[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = AUDJPY[index][3].y;
            d_dif = AUDJPY[index][3].y - AUDJPY[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][3].y/9;
            }
            d_dea = AUDJPY[index][3].y/9 - AUDJPY[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = AUDJPY[index][3].z;
            d_dif = AUDJPY[index][3].z - AUDJPY[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][3].z/9;
            }
            d_dea = AUDJPY[index][3].z/9 - AUDJPY[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = AUDJPY[index][3].w;
            d_dif = AUDJPY[index][3].w - AUDJPY[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += AUDJPY[index-j][3].w/9;
            }
            d_dea = AUDJPY[index][3].w/9 - AUDJPY[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 3:
        switch (time_length){
            case 1:
            dif = AUDUSD[index][0].x;
            d_dif = AUDUSD[index][0].x - AUDUSD[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][0].x/9;
            }
            d_dea = AUDUSD[index][0].x/9 - AUDUSD[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = AUDUSD[index][0].y;
            d_dif = AUDUSD[index][0].y - AUDUSD[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][0].y/9;
            }
            d_dea = AUDUSD[index][0].y/9 - AUDUSD[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = AUDUSD[index][0].z;
            d_dif = AUDUSD[index][0].z - AUDUSD[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][0].z/9;
            }
            d_dea = AUDUSD[index][0].z/9 - AUDUSD[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = AUDUSD[index][0].w;
            d_dif = AUDUSD[index][0].w - AUDUSD[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][0].w/9;
            }
            d_dea = AUDUSD[index][0].w/9 - AUDUSD[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = AUDUSD[index][1].x;
            d_dif = AUDUSD[index][1].x - AUDUSD[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][1].x/9;
            }
            d_dea = AUDUSD[index][1].x/9 - AUDUSD[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = AUDUSD[index][1].y;
            d_dif = AUDUSD[index][1].y - AUDUSD[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][1].y/9;
            }
            d_dea = AUDUSD[index][1].y/9 - AUDUSD[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = AUDUSD[index][1].z;
            d_dif = AUDUSD[index][1].z - AUDUSD[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][1].z/9;
            }
            d_dea = AUDUSD[index][1].z/9 - AUDUSD[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = AUDUSD[index][1].w;
            d_dif = AUDUSD[index][1].w - AUDUSD[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][1].w/9;
            }
            d_dea = AUDUSD[index][1].w/9 - AUDUSD[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = AUDUSD[index][2].x;
            d_dif = AUDUSD[index][2].x - AUDUSD[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][2].x/9;
            }
            d_dea = AUDUSD[index][2].x/9 - AUDUSD[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = AUDUSD[index][2].y;
            d_dif = AUDUSD[index][2].y - AUDUSD[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][2].y/9;
            }
            d_dea = AUDUSD[index][2].y/9 - AUDUSD[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = AUDUSD[index][2].z;
            d_dif = AUDUSD[index][2].z - AUDUSD[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][2].z/9;
            }
            d_dea = AUDUSD[index][2].z/9 - AUDUSD[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = AUDUSD[index][2].w;
            d_dif = AUDUSD[index][2].w - AUDUSD[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][2].w/9;
            }
            d_dea = AUDUSD[index][2].w/9 - AUDUSD[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = AUDUSD[index][3].x;
            d_dif = AUDUSD[index][3].x - AUDUSD[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][3].x/9;
            }
            d_dea = AUDUSD[index][3].x/9 - AUDUSD[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = AUDUSD[index][3].y;
            d_dif = AUDUSD[index][3].y - AUDUSD[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][3].y/9;
            }
            d_dea = AUDUSD[index][3].y/9 - AUDUSD[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = AUDUSD[index][3].z;
            d_dif = AUDUSD[index][3].z - AUDUSD[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][3].z/9;
            }
            d_dea = AUDUSD[index][3].z/9 - AUDUSD[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = AUDUSD[index][3].w;
            d_dif = AUDUSD[index][3].w - AUDUSD[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += AUDUSD[index-j][3].w/9;
            }
            d_dea = AUDUSD[index][3].w/9 - AUDUSD[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 4:
        switch (time_length){
            case 1:
            dif = CADCHF[index][0].x;
            d_dif = CADCHF[index][0].x - CADCHF[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][0].x/9;
            }
            d_dea = CADCHF[index][0].x/9 - CADCHF[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = CADCHF[index][0].y;
            d_dif = CADCHF[index][0].y - CADCHF[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][0].y/9;
            }
            d_dea = CADCHF[index][0].y/9 - CADCHF[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = CADCHF[index][0].z;
            d_dif = CADCHF[index][0].z - CADCHF[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][0].z/9;
            }
            d_dea = CADCHF[index][0].z/9 - CADCHF[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = CADCHF[index][0].w;
            d_dif = CADCHF[index][0].w - CADCHF[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][0].w/9;
            }
            d_dea = CADCHF[index][0].w/9 - CADCHF[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = CADCHF[index][1].x;
            d_dif = CADCHF[index][1].x - CADCHF[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][1].x/9;
            }
            d_dea = CADCHF[index][1].x/9 - CADCHF[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = CADCHF[index][1].y;
            d_dif = CADCHF[index][1].y - CADCHF[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][1].y/9;
            }
            d_dea = CADCHF[index][1].y/9 - CADCHF[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = CADCHF[index][1].z;
            d_dif = CADCHF[index][1].z - CADCHF[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][1].z/9;
            }
            d_dea = CADCHF[index][1].z/9 - CADCHF[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = CADCHF[index][1].w;
            d_dif = CADCHF[index][1].w - CADCHF[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][1].w/9;
            }
            d_dea = CADCHF[index][1].w/9 - CADCHF[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = CADCHF[index][2].x;
            d_dif = CADCHF[index][2].x - CADCHF[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][2].x/9;
            }
            d_dea = CADCHF[index][2].x/9 - CADCHF[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = CADCHF[index][2].y;
            d_dif = CADCHF[index][2].y - CADCHF[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][2].y/9;
            }
            d_dea = CADCHF[index][2].y/9 - CADCHF[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = CADCHF[index][2].z;
            d_dif = CADCHF[index][2].z - CADCHF[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][2].z/9;
            }
            d_dea = CADCHF[index][2].z/9 - CADCHF[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = CADCHF[index][2].w;
            d_dif = CADCHF[index][2].w - CADCHF[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][2].w/9;
            }
            d_dea = CADCHF[index][2].w/9 - CADCHF[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = CADCHF[index][3].x;
            d_dif = CADCHF[index][3].x - CADCHF[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][3].x/9;
            }
            d_dea = CADCHF[index][3].x/9 - CADCHF[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = CADCHF[index][3].y;
            d_dif = CADCHF[index][3].y - CADCHF[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][3].y/9;
            }
            d_dea = CADCHF[index][3].y/9 - CADCHF[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = CADCHF[index][3].z;
            d_dif = CADCHF[index][3].z - CADCHF[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][3].z/9;
            }
            d_dea = CADCHF[index][3].z/9 - CADCHF[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = CADCHF[index][3].w;
            d_dif = CADCHF[index][3].w - CADCHF[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += CADCHF[index-j][3].w/9;
            }
            d_dea = CADCHF[index][3].w/9 - CADCHF[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 5:
        switch (time_length){
            case 1:
            dif = CADJPY[index][0].x;
            d_dif = CADJPY[index][0].x - CADJPY[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][0].x/9;
            }
            d_dea = CADJPY[index][0].x/9 - CADJPY[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = CADJPY[index][0].y;
            d_dif = CADJPY[index][0].y - CADJPY[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][0].y/9;
            }
            d_dea = CADJPY[index][0].y/9 - CADJPY[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = CADJPY[index][0].z;
            d_dif = CADJPY[index][0].z - CADJPY[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][0].z/9;
            }
            d_dea = CADJPY[index][0].z/9 - CADJPY[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = CADJPY[index][0].w;
            d_dif = CADJPY[index][0].w - CADJPY[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][0].w/9;
            }
            d_dea = CADJPY[index][0].w/9 - CADJPY[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = CADJPY[index][1].x;
            d_dif = CADJPY[index][1].x - CADJPY[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][1].x/9;
            }
            d_dea = CADJPY[index][1].x/9 - CADJPY[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = CADJPY[index][1].y;
            d_dif = CADJPY[index][1].y - CADJPY[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][1].y/9;
            }
            d_dea = CADJPY[index][1].y/9 - CADJPY[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = CADJPY[index][1].z;
            d_dif = CADJPY[index][1].z - CADJPY[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][1].z/9;
            }
            d_dea = CADJPY[index][1].z/9 - CADJPY[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = CADJPY[index][1].w;
            d_dif = CADJPY[index][1].w - CADJPY[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][1].w/9;
            }
            d_dea = CADJPY[index][1].w/9 - CADJPY[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = CADJPY[index][2].x;
            d_dif = CADJPY[index][2].x - CADJPY[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][2].x/9;
            }
            d_dea = CADJPY[index][2].x/9 - CADJPY[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = CADJPY[index][2].y;
            d_dif = CADJPY[index][2].y - CADJPY[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][2].y/9;
            }
            d_dea = CADJPY[index][2].y/9 - CADJPY[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = CADJPY[index][2].z;
            d_dif = CADJPY[index][2].z - CADJPY[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][2].z/9;
            }
            d_dea = CADJPY[index][2].z/9 - CADJPY[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = CADJPY[index][2].w;
            d_dif = CADJPY[index][2].w - CADJPY[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][2].w/9;
            }
            d_dea = CADJPY[index][2].w/9 - CADJPY[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = CADJPY[index][3].x;
            d_dif = CADJPY[index][3].x - CADJPY[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][3].x/9;
            }
            d_dea = CADJPY[index][3].x/9 - CADJPY[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = CADJPY[index][3].y;
            d_dif = CADJPY[index][3].y - CADJPY[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][3].y/9;
            }
            d_dea = CADJPY[index][3].y/9 - CADJPY[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = CADJPY[index][3].z;
            d_dif = CADJPY[index][3].z - CADJPY[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][3].z/9;
            }
            d_dea = CADJPY[index][3].z/9 - CADJPY[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = CADJPY[index][3].w;
            d_dif = CADJPY[index][3].w - CADJPY[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += CADJPY[index-j][3].w/9;
            }
            d_dea = CADJPY[index][3].w/9 - CADJPY[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 6:
        switch (time_length){
            case 1:
            dif = CHFJPY[index][0].x;
            d_dif = CHFJPY[index][0].x - CHFJPY[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][0].x/9;
            }
            d_dea = CHFJPY[index][0].x/9 - CHFJPY[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = CHFJPY[index][0].y;
            d_dif = CHFJPY[index][0].y - CHFJPY[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][0].y/9;
            }
            d_dea = CHFJPY[index][0].y/9 - CHFJPY[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = CHFJPY[index][0].z;
            d_dif = CHFJPY[index][0].z - CHFJPY[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][0].z/9;
            }
            d_dea = CHFJPY[index][0].z/9 - CHFJPY[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = CHFJPY[index][0].w;
            d_dif = CHFJPY[index][0].w - CHFJPY[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][0].w/9;
            }
            d_dea = CHFJPY[index][0].w/9 - CHFJPY[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = CHFJPY[index][1].x;
            d_dif = CHFJPY[index][1].x - CHFJPY[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][1].x/9;
            }
            d_dea = CHFJPY[index][1].x/9 - CHFJPY[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = CHFJPY[index][1].y;
            d_dif = CHFJPY[index][1].y - CHFJPY[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][1].y/9;
            }
            d_dea = CHFJPY[index][1].y/9 - CHFJPY[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = CHFJPY[index][1].z;
            d_dif = CHFJPY[index][1].z - CHFJPY[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][1].z/9;
            }
            d_dea = CHFJPY[index][1].z/9 - CHFJPY[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = CHFJPY[index][1].w;
            d_dif = CHFJPY[index][1].w - CHFJPY[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][1].w/9;
            }
            d_dea = CHFJPY[index][1].w/9 - CHFJPY[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = CHFJPY[index][2].x;
            d_dif = CHFJPY[index][2].x - CHFJPY[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][2].x/9;
            }
            d_dea = CHFJPY[index][2].x/9 - CHFJPY[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = CHFJPY[index][2].y;
            d_dif = CHFJPY[index][2].y - CHFJPY[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][2].y/9;
            }
            d_dea = CHFJPY[index][2].y/9 - CHFJPY[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = CHFJPY[index][2].z;
            d_dif = CHFJPY[index][2].z - CHFJPY[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][2].z/9;
            }
            d_dea = CHFJPY[index][2].z/9 - CHFJPY[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = CHFJPY[index][2].w;
            d_dif = CHFJPY[index][2].w - CHFJPY[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][2].w/9;
            }
            d_dea = CHFJPY[index][2].w/9 - CHFJPY[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = CHFJPY[index][3].x;
            d_dif = CHFJPY[index][3].x - CHFJPY[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][3].x/9;
            }
            d_dea = CHFJPY[index][3].x/9 - CHFJPY[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = CHFJPY[index][3].y;
            d_dif = CHFJPY[index][3].y - CHFJPY[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][3].y/9;
            }
            d_dea = CHFJPY[index][3].y/9 - CHFJPY[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = CHFJPY[index][3].z;
            d_dif = CHFJPY[index][3].z - CHFJPY[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][3].z/9;
            }
            d_dea = CHFJPY[index][3].z/9 - CHFJPY[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = CHFJPY[index][3].w;
            d_dif = CHFJPY[index][3].w - CHFJPY[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += CHFJPY[index-j][3].w/9;
            }
            d_dea = CHFJPY[index][3].w/9 - CHFJPY[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 7:
        switch (time_length){
            case 1:
            dif = EURAUD[index][0].x;
            d_dif = EURAUD[index][0].x - EURAUD[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][0].x/9;
            }
            d_dea = EURAUD[index][0].x/9 - EURAUD[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = EURAUD[index][0].y;
            d_dif = EURAUD[index][0].y - EURAUD[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][0].y/9;
            }
            d_dea = EURAUD[index][0].y/9 - EURAUD[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = EURAUD[index][0].z;
            d_dif = EURAUD[index][0].z - EURAUD[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][0].z/9;
            }
            d_dea = EURAUD[index][0].z/9 - EURAUD[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = EURAUD[index][0].w;
            d_dif = EURAUD[index][0].w - EURAUD[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][0].w/9;
            }
            d_dea = EURAUD[index][0].w/9 - EURAUD[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = EURAUD[index][1].x;
            d_dif = EURAUD[index][1].x - EURAUD[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][1].x/9;
            }
            d_dea = EURAUD[index][1].x/9 - EURAUD[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = EURAUD[index][1].y;
            d_dif = EURAUD[index][1].y - EURAUD[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][1].y/9;
            }
            d_dea = EURAUD[index][1].y/9 - EURAUD[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = EURAUD[index][1].z;
            d_dif = EURAUD[index][1].z - EURAUD[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][1].z/9;
            }
            d_dea = EURAUD[index][1].z/9 - EURAUD[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = EURAUD[index][1].w;
            d_dif = EURAUD[index][1].w - EURAUD[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][1].w/9;
            }
            d_dea = EURAUD[index][1].w/9 - EURAUD[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = EURAUD[index][2].x;
            d_dif = EURAUD[index][2].x - EURAUD[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][2].x/9;
            }
            d_dea = EURAUD[index][2].x/9 - EURAUD[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = EURAUD[index][2].y;
            d_dif = EURAUD[index][2].y - EURAUD[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][2].y/9;
            }
            d_dea = EURAUD[index][2].y/9 - EURAUD[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = EURAUD[index][2].z;
            d_dif = EURAUD[index][2].z - EURAUD[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][2].z/9;
            }
            d_dea = EURAUD[index][2].z/9 - EURAUD[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = EURAUD[index][2].w;
            d_dif = EURAUD[index][2].w - EURAUD[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][2].w/9;
            }
            d_dea = EURAUD[index][2].w/9 - EURAUD[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = EURAUD[index][3].x;
            d_dif = EURAUD[index][3].x - EURAUD[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][3].x/9;
            }
            d_dea = EURAUD[index][3].x/9 - EURAUD[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = EURAUD[index][3].y;
            d_dif = EURAUD[index][3].y - EURAUD[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][3].y/9;
            }
            d_dea = EURAUD[index][3].y/9 - EURAUD[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = EURAUD[index][3].z;
            d_dif = EURAUD[index][3].z - EURAUD[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][3].z/9;
            }
            d_dea = EURAUD[index][3].z/9 - EURAUD[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = EURAUD[index][3].w;
            d_dif = EURAUD[index][3].w - EURAUD[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += EURAUD[index-j][3].w/9;
            }
            d_dea = EURAUD[index][3].w/9 - EURAUD[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 8:
        switch (time_length){
            case 1:
            dif = EURCAD[index][0].x;
            d_dif = EURCAD[index][0].x - EURCAD[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][0].x/9;
            }
            d_dea = EURCAD[index][0].x/9 - EURCAD[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = EURCAD[index][0].y;
            d_dif = EURCAD[index][0].y - EURCAD[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][0].y/9;
            }
            d_dea = EURCAD[index][0].y/9 - EURCAD[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = EURCAD[index][0].z;
            d_dif = EURCAD[index][0].z - EURCAD[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][0].z/9;
            }
            d_dea = EURCAD[index][0].z/9 - EURCAD[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = EURCAD[index][0].w;
            d_dif = EURCAD[index][0].w - EURCAD[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][0].w/9;
            }
            d_dea = EURCAD[index][0].w/9 - EURCAD[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = EURCAD[index][1].x;
            d_dif = EURCAD[index][1].x - EURCAD[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][1].x/9;
            }
            d_dea = EURCAD[index][1].x/9 - EURCAD[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = EURCAD[index][1].y;
            d_dif = EURCAD[index][1].y - EURCAD[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][1].y/9;
            }
            d_dea = EURCAD[index][1].y/9 - EURCAD[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = EURCAD[index][1].z;
            d_dif = EURCAD[index][1].z - EURCAD[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][1].z/9;
            }
            d_dea = EURCAD[index][1].z/9 - EURCAD[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = EURCAD[index][1].w;
            d_dif = EURCAD[index][1].w - EURCAD[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][1].w/9;
            }
            d_dea = EURCAD[index][1].w/9 - EURCAD[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = EURCAD[index][2].x;
            d_dif = EURCAD[index][2].x - EURCAD[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][2].x/9;
            }
            d_dea = EURCAD[index][2].x/9 - EURCAD[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = EURCAD[index][2].y;
            d_dif = EURCAD[index][2].y - EURCAD[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][2].y/9;
            }
            d_dea = EURCAD[index][2].y/9 - EURCAD[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = EURCAD[index][2].z;
            d_dif = EURCAD[index][2].z - EURCAD[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][2].z/9;
            }
            d_dea = EURCAD[index][2].z/9 - EURCAD[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = EURCAD[index][2].w;
            d_dif = EURCAD[index][2].w - EURCAD[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][2].w/9;
            }
            d_dea = EURCAD[index][2].w/9 - EURCAD[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = EURCAD[index][3].x;
            d_dif = EURCAD[index][3].x - EURCAD[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][3].x/9;
            }
            d_dea = EURCAD[index][3].x/9 - EURCAD[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = EURCAD[index][3].y;
            d_dif = EURCAD[index][3].y - EURCAD[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][3].y/9;
            }
            d_dea = EURCAD[index][3].y/9 - EURCAD[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = EURCAD[index][3].z;
            d_dif = EURCAD[index][3].z - EURCAD[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][3].z/9;
            }
            d_dea = EURCAD[index][3].z/9 - EURCAD[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = EURCAD[index][3].w;
            d_dif = EURCAD[index][3].w - EURCAD[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += EURCAD[index-j][3].w/9;
            }
            d_dea = EURCAD[index][3].w/9 - EURCAD[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 9:
        switch (time_length){
            case 1:
            dif = EURCHF[index][0].x;
            d_dif = EURCHF[index][0].x - EURCHF[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][0].x/9;
            }
            d_dea = EURCHF[index][0].x/9 - EURCHF[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = EURCHF[index][0].y;
            d_dif = EURCHF[index][0].y - EURCHF[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][0].y/9;
            }
            d_dea = EURCHF[index][0].y/9 - EURCHF[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = EURCHF[index][0].z;
            d_dif = EURCHF[index][0].z - EURCHF[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][0].z/9;
            }
            d_dea = EURCHF[index][0].z/9 - EURCHF[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = EURCHF[index][0].w;
            d_dif = EURCHF[index][0].w - EURCHF[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][0].w/9;
            }
            d_dea = EURCHF[index][0].w/9 - EURCHF[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = EURCHF[index][1].x;
            d_dif = EURCHF[index][1].x - EURCHF[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][1].x/9;
            }
            d_dea = EURCHF[index][1].x/9 - EURCHF[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = EURCHF[index][1].y;
            d_dif = EURCHF[index][1].y - EURCHF[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][1].y/9;
            }
            d_dea = EURCHF[index][1].y/9 - EURCHF[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = EURCHF[index][1].z;
            d_dif = EURCHF[index][1].z - EURCHF[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][1].z/9;
            }
            d_dea = EURCHF[index][1].z/9 - EURCHF[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = EURCHF[index][1].w;
            d_dif = EURCHF[index][1].w - EURCHF[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][1].w/9;
            }
            d_dea = EURCHF[index][1].w/9 - EURCHF[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = EURCHF[index][2].x;
            d_dif = EURCHF[index][2].x - EURCHF[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][2].x/9;
            }
            d_dea = EURCHF[index][2].x/9 - EURCHF[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = EURCHF[index][2].y;
            d_dif = EURCHF[index][2].y - EURCHF[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][2].y/9;
            }
            d_dea = EURCHF[index][2].y/9 - EURCHF[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = EURCHF[index][2].z;
            d_dif = EURCHF[index][2].z - EURCHF[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][2].z/9;
            }
            d_dea = EURCHF[index][2].z/9 - EURCHF[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = EURCHF[index][2].w;
            d_dif = EURCHF[index][2].w - EURCHF[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][2].w/9;
            }
            d_dea = EURCHF[index][2].w/9 - EURCHF[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = EURCHF[index][3].x;
            d_dif = EURCHF[index][3].x - EURCHF[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][3].x/9;
            }
            d_dea = EURCHF[index][3].x/9 - EURCHF[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = EURCHF[index][3].y;
            d_dif = EURCHF[index][3].y - EURCHF[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][3].y/9;
            }
            d_dea = EURCHF[index][3].y/9 - EURCHF[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = EURCHF[index][3].z;
            d_dif = EURCHF[index][3].z - EURCHF[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][3].z/9;
            }
            d_dea = EURCHF[index][3].z/9 - EURCHF[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = EURCHF[index][3].w;
            d_dif = EURCHF[index][3].w - EURCHF[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += EURCHF[index-j][3].w/9;
            }
            d_dea = EURCHF[index][3].w/9 - EURCHF[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 10:
        switch (time_length){
            case 1:
            dif = EURGBP[index][0].x;
            d_dif = EURGBP[index][0].x - EURGBP[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][0].x/9;
            }
            d_dea = EURGBP[index][0].x/9 - EURGBP[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = EURGBP[index][0].y;
            d_dif = EURGBP[index][0].y - EURGBP[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][0].y/9;
            }
            d_dea = EURGBP[index][0].y/9 - EURGBP[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = EURGBP[index][0].z;
            d_dif = EURGBP[index][0].z - EURGBP[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][0].z/9;
            }
            d_dea = EURGBP[index][0].z/9 - EURGBP[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = EURGBP[index][0].w;
            d_dif = EURGBP[index][0].w - EURGBP[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][0].w/9;
            }
            d_dea = EURGBP[index][0].w/9 - EURGBP[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = EURGBP[index][1].x;
            d_dif = EURGBP[index][1].x - EURGBP[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][1].x/9;
            }
            d_dea = EURGBP[index][1].x/9 - EURGBP[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = EURGBP[index][1].y;
            d_dif = EURGBP[index][1].y - EURGBP[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][1].y/9;
            }
            d_dea = EURGBP[index][1].y/9 - EURGBP[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = EURGBP[index][1].z;
            d_dif = EURGBP[index][1].z - EURGBP[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][1].z/9;
            }
            d_dea = EURGBP[index][1].z/9 - EURGBP[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = EURGBP[index][1].w;
            d_dif = EURGBP[index][1].w - EURGBP[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][1].w/9;
            }
            d_dea = EURGBP[index][1].w/9 - EURGBP[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = EURGBP[index][2].x;
            d_dif = EURGBP[index][2].x - EURGBP[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][2].x/9;
            }
            d_dea = EURGBP[index][2].x/9 - EURGBP[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = EURGBP[index][2].y;
            d_dif = EURGBP[index][2].y - EURGBP[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][2].y/9;
            }
            d_dea = EURGBP[index][2].y/9 - EURGBP[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = EURGBP[index][2].z;
            d_dif = EURGBP[index][2].z - EURGBP[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][2].z/9;
            }
            d_dea = EURGBP[index][2].z/9 - EURGBP[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = EURGBP[index][2].w;
            d_dif = EURGBP[index][2].w - EURGBP[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][2].w/9;
            }
            d_dea = EURGBP[index][2].w/9 - EURGBP[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = EURGBP[index][3].x;
            d_dif = EURGBP[index][3].x - EURGBP[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][3].x/9;
            }
            d_dea = EURGBP[index][3].x/9 - EURGBP[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = EURGBP[index][3].y;
            d_dif = EURGBP[index][3].y - EURGBP[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][3].y/9;
            }
            d_dea = EURGBP[index][3].y/9 - EURGBP[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = EURGBP[index][3].z;
            d_dif = EURGBP[index][3].z - EURGBP[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][3].z/9;
            }
            d_dea = EURGBP[index][3].z/9 - EURGBP[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = EURGBP[index][3].w;
            d_dif = EURGBP[index][3].w - EURGBP[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += EURGBP[index-j][3].w/9;
            }
            d_dea = EURGBP[index][3].w/9 - EURGBP[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 11:
        switch (time_length){
            case 1:
            dif = EURJPY[index][0].x;
            d_dif = EURJPY[index][0].x - EURJPY[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][0].x/9;
            }
            d_dea = EURJPY[index][0].x/9 - EURJPY[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = EURJPY[index][0].y;
            d_dif = EURJPY[index][0].y - EURJPY[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][0].y/9;
            }
            d_dea = EURJPY[index][0].y/9 - EURJPY[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = EURJPY[index][0].z;
            d_dif = EURJPY[index][0].z - EURJPY[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][0].z/9;
            }
            d_dea = EURJPY[index][0].z/9 - EURJPY[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = EURJPY[index][0].w;
            d_dif = EURJPY[index][0].w - EURJPY[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][0].w/9;
            }
            d_dea = EURJPY[index][0].w/9 - EURJPY[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = EURJPY[index][1].x;
            d_dif = EURJPY[index][1].x - EURJPY[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][1].x/9;
            }
            d_dea = EURJPY[index][1].x/9 - EURJPY[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = EURJPY[index][1].y;
            d_dif = EURJPY[index][1].y - EURJPY[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][1].y/9;
            }
            d_dea = EURJPY[index][1].y/9 - EURJPY[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = EURJPY[index][1].z;
            d_dif = EURJPY[index][1].z - EURJPY[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][1].z/9;
            }
            d_dea = EURJPY[index][1].z/9 - EURJPY[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = EURJPY[index][1].w;
            d_dif = EURJPY[index][1].w - EURJPY[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][1].w/9;
            }
            d_dea = EURJPY[index][1].w/9 - EURJPY[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = EURJPY[index][2].x;
            d_dif = EURJPY[index][2].x - EURJPY[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][2].x/9;
            }
            d_dea = EURJPY[index][2].x/9 - EURJPY[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = EURJPY[index][2].y;
            d_dif = EURJPY[index][2].y - EURJPY[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][2].y/9;
            }
            d_dea = EURJPY[index][2].y/9 - EURJPY[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = EURJPY[index][2].z;
            d_dif = EURJPY[index][2].z - EURJPY[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][2].z/9;
            }
            d_dea = EURJPY[index][2].z/9 - EURJPY[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = EURJPY[index][2].w;
            d_dif = EURJPY[index][2].w - EURJPY[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][2].w/9;
            }
            d_dea = EURJPY[index][2].w/9 - EURJPY[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = EURJPY[index][3].x;
            d_dif = EURJPY[index][3].x - EURJPY[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][3].x/9;
            }
            d_dea = EURJPY[index][3].x/9 - EURJPY[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = EURJPY[index][3].y;
            d_dif = EURJPY[index][3].y - EURJPY[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][3].y/9;
            }
            d_dea = EURJPY[index][3].y/9 - EURJPY[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = EURJPY[index][3].z;
            d_dif = EURJPY[index][3].z - EURJPY[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][3].z/9;
            }
            d_dea = EURJPY[index][3].z/9 - EURJPY[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = EURJPY[index][3].w;
            d_dif = EURJPY[index][3].w - EURJPY[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += EURJPY[index-j][3].w/9;
            }
            d_dea = EURJPY[index][3].w/9 - EURJPY[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 12:
        switch (time_length){
            case 1:
            dif = EURUSD[index][0].x;
            d_dif = EURUSD[index][0].x - EURUSD[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][0].x/9;
            }
            d_dea = EURUSD[index][0].x/9 - EURUSD[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = EURUSD[index][0].y;
            d_dif = EURUSD[index][0].y - EURUSD[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][0].y/9;
            }
            d_dea = EURUSD[index][0].y/9 - EURUSD[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = EURUSD[index][0].z;
            d_dif = EURUSD[index][0].z - EURUSD[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][0].z/9;
            }
            d_dea = EURUSD[index][0].z/9 - EURUSD[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = EURUSD[index][0].w;
            d_dif = EURUSD[index][0].w - EURUSD[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][0].w/9;
            }
            d_dea = EURUSD[index][0].w/9 - EURUSD[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = EURUSD[index][1].x;
            d_dif = EURUSD[index][1].x - EURUSD[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][1].x/9;
            }
            d_dea = EURUSD[index][1].x/9 - EURUSD[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = EURUSD[index][1].y;
            d_dif = EURUSD[index][1].y - EURUSD[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][1].y/9;
            }
            d_dea = EURUSD[index][1].y/9 - EURUSD[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = EURUSD[index][1].z;
            d_dif = EURUSD[index][1].z - EURUSD[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][1].z/9;
            }
            d_dea = EURUSD[index][1].z/9 - EURUSD[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = EURUSD[index][1].w;
            d_dif = EURUSD[index][1].w - EURUSD[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][1].w/9;
            }
            d_dea = EURUSD[index][1].w/9 - EURUSD[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = EURUSD[index][2].x;
            d_dif = EURUSD[index][2].x - EURUSD[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][2].x/9;
            }
            d_dea = EURUSD[index][2].x/9 - EURUSD[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = EURUSD[index][2].y;
            d_dif = EURUSD[index][2].y - EURUSD[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][2].y/9;
            }
            d_dea = EURUSD[index][2].y/9 - EURUSD[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = EURUSD[index][2].z;
            d_dif = EURUSD[index][2].z - EURUSD[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][2].z/9;
            }
            d_dea = EURUSD[index][2].z/9 - EURUSD[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = EURUSD[index][2].w;
            d_dif = EURUSD[index][2].w - EURUSD[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][2].w/9;
            }
            d_dea = EURUSD[index][2].w/9 - EURUSD[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = EURUSD[index][3].x;
            d_dif = EURUSD[index][3].x - EURUSD[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][3].x/9;
            }
            d_dea = EURUSD[index][3].x/9 - EURUSD[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = EURUSD[index][3].y;
            d_dif = EURUSD[index][3].y - EURUSD[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][3].y/9;
            }
            d_dea = EURUSD[index][3].y/9 - EURUSD[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = EURUSD[index][3].z;
            d_dif = EURUSD[index][3].z - EURUSD[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][3].z/9;
            }
            d_dea = EURUSD[index][3].z/9 - EURUSD[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = EURUSD[index][3].w;
            d_dif = EURUSD[index][3].w - EURUSD[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += EURUSD[index-j][3].w/9;
            }
            d_dea = EURUSD[index][3].w/9 - EURUSD[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 13:
        switch (time_length){
            case 1:
            dif = GBPAUD[index][0].x;
            d_dif = GBPAUD[index][0].x - GBPAUD[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][0].x/9;
            }
            d_dea = GBPAUD[index][0].x/9 - GBPAUD[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = GBPAUD[index][0].y;
            d_dif = GBPAUD[index][0].y - GBPAUD[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][0].y/9;
            }
            d_dea = GBPAUD[index][0].y/9 - GBPAUD[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = GBPAUD[index][0].z;
            d_dif = GBPAUD[index][0].z - GBPAUD[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][0].z/9;
            }
            d_dea = GBPAUD[index][0].z/9 - GBPAUD[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = GBPAUD[index][0].w;
            d_dif = GBPAUD[index][0].w - GBPAUD[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][0].w/9;
            }
            d_dea = GBPAUD[index][0].w/9 - GBPAUD[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = GBPAUD[index][1].x;
            d_dif = GBPAUD[index][1].x - GBPAUD[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][1].x/9;
            }
            d_dea = GBPAUD[index][1].x/9 - GBPAUD[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = GBPAUD[index][1].y;
            d_dif = GBPAUD[index][1].y - GBPAUD[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][1].y/9;
            }
            d_dea = GBPAUD[index][1].y/9 - GBPAUD[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = GBPAUD[index][1].z;
            d_dif = GBPAUD[index][1].z - GBPAUD[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][1].z/9;
            }
            d_dea = GBPAUD[index][1].z/9 - GBPAUD[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = GBPAUD[index][1].w;
            d_dif = GBPAUD[index][1].w - GBPAUD[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][1].w/9;
            }
            d_dea = GBPAUD[index][1].w/9 - GBPAUD[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = GBPAUD[index][2].x;
            d_dif = GBPAUD[index][2].x - GBPAUD[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][2].x/9;
            }
            d_dea = GBPAUD[index][2].x/9 - GBPAUD[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = GBPAUD[index][2].y;
            d_dif = GBPAUD[index][2].y - GBPAUD[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][2].y/9;
            }
            d_dea = GBPAUD[index][2].y/9 - GBPAUD[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = GBPAUD[index][2].z;
            d_dif = GBPAUD[index][2].z - GBPAUD[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][2].z/9;
            }
            d_dea = GBPAUD[index][2].z/9 - GBPAUD[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = GBPAUD[index][2].w;
            d_dif = GBPAUD[index][2].w - GBPAUD[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][2].w/9;
            }
            d_dea = GBPAUD[index][2].w/9 - GBPAUD[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = GBPAUD[index][3].x;
            d_dif = GBPAUD[index][3].x - GBPAUD[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][3].x/9;
            }
            d_dea = GBPAUD[index][3].x/9 - GBPAUD[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = GBPAUD[index][3].y;
            d_dif = GBPAUD[index][3].y - GBPAUD[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][3].y/9;
            }
            d_dea = GBPAUD[index][3].y/9 - GBPAUD[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = GBPAUD[index][3].z;
            d_dif = GBPAUD[index][3].z - GBPAUD[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][3].z/9;
            }
            d_dea = GBPAUD[index][3].z/9 - GBPAUD[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = GBPAUD[index][3].w;
            d_dif = GBPAUD[index][3].w - GBPAUD[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += GBPAUD[index-j][3].w/9;
            }
            d_dea = GBPAUD[index][3].w/9 - GBPAUD[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 14:
        switch (time_length){
            case 1:
            dif = GBPCAD[index][0].x;
            d_dif = GBPCAD[index][0].x - GBPCAD[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][0].x/9;
            }
            d_dea = GBPCAD[index][0].x/9 - GBPCAD[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = GBPCAD[index][0].y;
            d_dif = GBPCAD[index][0].y - GBPCAD[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][0].y/9;
            }
            d_dea = GBPCAD[index][0].y/9 - GBPCAD[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = GBPCAD[index][0].z;
            d_dif = GBPCAD[index][0].z - GBPCAD[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][0].z/9;
            }
            d_dea = GBPCAD[index][0].z/9 - GBPCAD[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = GBPCAD[index][0].w;
            d_dif = GBPCAD[index][0].w - GBPCAD[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][0].w/9;
            }
            d_dea = GBPCAD[index][0].w/9 - GBPCAD[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = GBPCAD[index][1].x;
            d_dif = GBPCAD[index][1].x - GBPCAD[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][1].x/9;
            }
            d_dea = GBPCAD[index][1].x/9 - GBPCAD[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = GBPCAD[index][1].y;
            d_dif = GBPCAD[index][1].y - GBPCAD[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][1].y/9;
            }
            d_dea = GBPCAD[index][1].y/9 - GBPCAD[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = GBPCAD[index][1].z;
            d_dif = GBPCAD[index][1].z - GBPCAD[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][1].z/9;
            }
            d_dea = GBPCAD[index][1].z/9 - GBPCAD[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = GBPCAD[index][1].w;
            d_dif = GBPCAD[index][1].w - GBPCAD[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][1].w/9;
            }
            d_dea = GBPCAD[index][1].w/9 - GBPCAD[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = GBPCAD[index][2].x;
            d_dif = GBPCAD[index][2].x - GBPCAD[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][2].x/9;
            }
            d_dea = GBPCAD[index][2].x/9 - GBPCAD[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = GBPCAD[index][2].y;
            d_dif = GBPCAD[index][2].y - GBPCAD[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][2].y/9;
            }
            d_dea = GBPCAD[index][2].y/9 - GBPCAD[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = GBPCAD[index][2].z;
            d_dif = GBPCAD[index][2].z - GBPCAD[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][2].z/9;
            }
            d_dea = GBPCAD[index][2].z/9 - GBPCAD[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = GBPCAD[index][2].w;
            d_dif = GBPCAD[index][2].w - GBPCAD[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][2].w/9;
            }
            d_dea = GBPCAD[index][2].w/9 - GBPCAD[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = GBPCAD[index][3].x;
            d_dif = GBPCAD[index][3].x - GBPCAD[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][3].x/9;
            }
            d_dea = GBPCAD[index][3].x/9 - GBPCAD[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = GBPCAD[index][3].y;
            d_dif = GBPCAD[index][3].y - GBPCAD[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][3].y/9;
            }
            d_dea = GBPCAD[index][3].y/9 - GBPCAD[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = GBPCAD[index][3].z;
            d_dif = GBPCAD[index][3].z - GBPCAD[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][3].z/9;
            }
            d_dea = GBPCAD[index][3].z/9 - GBPCAD[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = GBPCAD[index][3].w;
            d_dif = GBPCAD[index][3].w - GBPCAD[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += GBPCAD[index-j][3].w/9;
            }
            d_dea = GBPCAD[index][3].w/9 - GBPCAD[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 15:
        switch (time_length){
            case 1:
            dif = GBPCHF[index][0].x;
            d_dif = GBPCHF[index][0].x - GBPCHF[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][0].x/9;
            }
            d_dea = GBPCHF[index][0].x/9 - GBPCHF[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = GBPCHF[index][0].y;
            d_dif = GBPCHF[index][0].y - GBPCHF[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][0].y/9;
            }
            d_dea = GBPCHF[index][0].y/9 - GBPCHF[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = GBPCHF[index][0].z;
            d_dif = GBPCHF[index][0].z - GBPCHF[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][0].z/9;
            }
            d_dea = GBPCHF[index][0].z/9 - GBPCHF[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = GBPCHF[index][0].w;
            d_dif = GBPCHF[index][0].w - GBPCHF[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][0].w/9;
            }
            d_dea = GBPCHF[index][0].w/9 - GBPCHF[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = GBPCHF[index][1].x;
            d_dif = GBPCHF[index][1].x - GBPCHF[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][1].x/9;
            }
            d_dea = GBPCHF[index][1].x/9 - GBPCHF[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = GBPCHF[index][1].y;
            d_dif = GBPCHF[index][1].y - GBPCHF[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][1].y/9;
            }
            d_dea = GBPCHF[index][1].y/9 - GBPCHF[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = GBPCHF[index][1].z;
            d_dif = GBPCHF[index][1].z - GBPCHF[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][1].z/9;
            }
            d_dea = GBPCHF[index][1].z/9 - GBPCHF[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = GBPCHF[index][1].w;
            d_dif = GBPCHF[index][1].w - GBPCHF[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][1].w/9;
            }
            d_dea = GBPCHF[index][1].w/9 - GBPCHF[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = GBPCHF[index][2].x;
            d_dif = GBPCHF[index][2].x - GBPCHF[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][2].x/9;
            }
            d_dea = GBPCHF[index][2].x/9 - GBPCHF[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = GBPCHF[index][2].y;
            d_dif = GBPCHF[index][2].y - GBPCHF[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][2].y/9;
            }
            d_dea = GBPCHF[index][2].y/9 - GBPCHF[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = GBPCHF[index][2].z;
            d_dif = GBPCHF[index][2].z - GBPCHF[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][2].z/9;
            }
            d_dea = GBPCHF[index][2].z/9 - GBPCHF[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = GBPCHF[index][2].w;
            d_dif = GBPCHF[index][2].w - GBPCHF[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][2].w/9;
            }
            d_dea = GBPCHF[index][2].w/9 - GBPCHF[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = GBPCHF[index][3].x;
            d_dif = GBPCHF[index][3].x - GBPCHF[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][3].x/9;
            }
            d_dea = GBPCHF[index][3].x/9 - GBPCHF[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = GBPCHF[index][3].y;
            d_dif = GBPCHF[index][3].y - GBPCHF[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][3].y/9;
            }
            d_dea = GBPCHF[index][3].y/9 - GBPCHF[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = GBPCHF[index][3].z;
            d_dif = GBPCHF[index][3].z - GBPCHF[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][3].z/9;
            }
            d_dea = GBPCHF[index][3].z/9 - GBPCHF[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = GBPCHF[index][3].w;
            d_dif = GBPCHF[index][3].w - GBPCHF[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += GBPCHF[index-j][3].w/9;
            }
            d_dea = GBPCHF[index][3].w/9 - GBPCHF[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 16:
        switch (time_length){
            case 1:
            dif = GBPJPY[index][0].x;
            d_dif = GBPJPY[index][0].x - GBPJPY[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][0].x/9;
            }
            d_dea = GBPJPY[index][0].x/9 - GBPJPY[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = GBPJPY[index][0].y;
            d_dif = GBPJPY[index][0].y - GBPJPY[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][0].y/9;
            }
            d_dea = GBPJPY[index][0].y/9 - GBPJPY[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = GBPJPY[index][0].z;
            d_dif = GBPJPY[index][0].z - GBPJPY[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][0].z/9;
            }
            d_dea = GBPJPY[index][0].z/9 - GBPJPY[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = GBPJPY[index][0].w;
            d_dif = GBPJPY[index][0].w - GBPJPY[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][0].w/9;
            }
            d_dea = GBPJPY[index][0].w/9 - GBPJPY[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = GBPJPY[index][1].x;
            d_dif = GBPJPY[index][1].x - GBPJPY[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][1].x/9;
            }
            d_dea = GBPJPY[index][1].x/9 - GBPJPY[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = GBPJPY[index][1].y;
            d_dif = GBPJPY[index][1].y - GBPJPY[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][1].y/9;
            }
            d_dea = GBPJPY[index][1].y/9 - GBPJPY[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = GBPJPY[index][1].z;
            d_dif = GBPJPY[index][1].z - GBPJPY[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][1].z/9;
            }
            d_dea = GBPJPY[index][1].z/9 - GBPJPY[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = GBPJPY[index][1].w;
            d_dif = GBPJPY[index][1].w - GBPJPY[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][1].w/9;
            }
            d_dea = GBPJPY[index][1].w/9 - GBPJPY[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = GBPJPY[index][2].x;
            d_dif = GBPJPY[index][2].x - GBPJPY[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][2].x/9;
            }
            d_dea = GBPJPY[index][2].x/9 - GBPJPY[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = GBPJPY[index][2].y;
            d_dif = GBPJPY[index][2].y - GBPJPY[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][2].y/9;
            }
            d_dea = GBPJPY[index][2].y/9 - GBPJPY[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = GBPJPY[index][2].z;
            d_dif = GBPJPY[index][2].z - GBPJPY[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][2].z/9;
            }
            d_dea = GBPJPY[index][2].z/9 - GBPJPY[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = GBPJPY[index][2].w;
            d_dif = GBPJPY[index][2].w - GBPJPY[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][2].w/9;
            }
            d_dea = GBPJPY[index][2].w/9 - GBPJPY[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = GBPJPY[index][3].x;
            d_dif = GBPJPY[index][3].x - GBPJPY[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][3].x/9;
            }
            d_dea = GBPJPY[index][3].x/9 - GBPJPY[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = GBPJPY[index][3].y;
            d_dif = GBPJPY[index][3].y - GBPJPY[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][3].y/9;
            }
            d_dea = GBPJPY[index][3].y/9 - GBPJPY[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = GBPJPY[index][3].z;
            d_dif = GBPJPY[index][3].z - GBPJPY[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][3].z/9;
            }
            d_dea = GBPJPY[index][3].z/9 - GBPJPY[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = GBPJPY[index][3].w;
            d_dif = GBPJPY[index][3].w - GBPJPY[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += GBPJPY[index-j][3].w/9;
            }
            d_dea = GBPJPY[index][3].w/9 - GBPJPY[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 17:
        switch (time_length){
            case 1:
            dif = GBPUSD[index][0].x;
            d_dif = GBPUSD[index][0].x - GBPUSD[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][0].x/9;
            }
            d_dea = GBPUSD[index][0].x/9 - GBPUSD[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = GBPUSD[index][0].y;
            d_dif = GBPUSD[index][0].y - GBPUSD[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][0].y/9;
            }
            d_dea = GBPUSD[index][0].y/9 - GBPUSD[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = GBPUSD[index][0].z;
            d_dif = GBPUSD[index][0].z - GBPUSD[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][0].z/9;
            }
            d_dea = GBPUSD[index][0].z/9 - GBPUSD[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = GBPUSD[index][0].w;
            d_dif = GBPUSD[index][0].w - GBPUSD[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][0].w/9;
            }
            d_dea = GBPUSD[index][0].w/9 - GBPUSD[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = GBPUSD[index][1].x;
            d_dif = GBPUSD[index][1].x - GBPUSD[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][1].x/9;
            }
            d_dea = GBPUSD[index][1].x/9 - GBPUSD[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = GBPUSD[index][1].y;
            d_dif = GBPUSD[index][1].y - GBPUSD[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][1].y/9;
            }
            d_dea = GBPUSD[index][1].y/9 - GBPUSD[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = GBPUSD[index][1].z;
            d_dif = GBPUSD[index][1].z - GBPUSD[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][1].z/9;
            }
            d_dea = GBPUSD[index][1].z/9 - GBPUSD[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = GBPUSD[index][1].w;
            d_dif = GBPUSD[index][1].w - GBPUSD[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][1].w/9;
            }
            d_dea = GBPUSD[index][1].w/9 - GBPUSD[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = GBPUSD[index][2].x;
            d_dif = GBPUSD[index][2].x - GBPUSD[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][2].x/9;
            }
            d_dea = GBPUSD[index][2].x/9 - GBPUSD[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = GBPUSD[index][2].y;
            d_dif = GBPUSD[index][2].y - GBPUSD[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][2].y/9;
            }
            d_dea = GBPUSD[index][2].y/9 - GBPUSD[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = GBPUSD[index][2].z;
            d_dif = GBPUSD[index][2].z - GBPUSD[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][2].z/9;
            }
            d_dea = GBPUSD[index][2].z/9 - GBPUSD[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = GBPUSD[index][2].w;
            d_dif = GBPUSD[index][2].w - GBPUSD[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][2].w/9;
            }
            d_dea = GBPUSD[index][2].w/9 - GBPUSD[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = GBPUSD[index][3].x;
            d_dif = GBPUSD[index][3].x - GBPUSD[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][3].x/9;
            }
            d_dea = GBPUSD[index][3].x/9 - GBPUSD[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = GBPUSD[index][3].y;
            d_dif = GBPUSD[index][3].y - GBPUSD[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][3].y/9;
            }
            d_dea = GBPUSD[index][3].y/9 - GBPUSD[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = GBPUSD[index][3].z;
            d_dif = GBPUSD[index][3].z - GBPUSD[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][3].z/9;
            }
            d_dea = GBPUSD[index][3].z/9 - GBPUSD[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = GBPUSD[index][3].w;
            d_dif = GBPUSD[index][3].w - GBPUSD[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += GBPUSD[index-j][3].w/9;
            }
            d_dea = GBPUSD[index][3].w/9 - GBPUSD[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 18:
        switch (time_length){
            case 1:
            dif = USDCAD[index][0].x;
            d_dif = USDCAD[index][0].x - USDCAD[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][0].x/9;
            }
            d_dea = USDCAD[index][0].x/9 - USDCAD[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = USDCAD[index][0].y;
            d_dif = USDCAD[index][0].y - USDCAD[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][0].y/9;
            }
            d_dea = USDCAD[index][0].y/9 - USDCAD[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = USDCAD[index][0].z;
            d_dif = USDCAD[index][0].z - USDCAD[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][0].z/9;
            }
            d_dea = USDCAD[index][0].z/9 - USDCAD[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = USDCAD[index][0].w;
            d_dif = USDCAD[index][0].w - USDCAD[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][0].w/9;
            }
            d_dea = USDCAD[index][0].w/9 - USDCAD[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = USDCAD[index][1].x;
            d_dif = USDCAD[index][1].x - USDCAD[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][1].x/9;
            }
            d_dea = USDCAD[index][1].x/9 - USDCAD[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = USDCAD[index][1].y;
            d_dif = USDCAD[index][1].y - USDCAD[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][1].y/9;
            }
            d_dea = USDCAD[index][1].y/9 - USDCAD[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = USDCAD[index][1].z;
            d_dif = USDCAD[index][1].z - USDCAD[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][1].z/9;
            }
            d_dea = USDCAD[index][1].z/9 - USDCAD[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = USDCAD[index][1].w;
            d_dif = USDCAD[index][1].w - USDCAD[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][1].w/9;
            }
            d_dea = USDCAD[index][1].w/9 - USDCAD[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = USDCAD[index][2].x;
            d_dif = USDCAD[index][2].x - USDCAD[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][2].x/9;
            }
            d_dea = USDCAD[index][2].x/9 - USDCAD[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = USDCAD[index][2].y;
            d_dif = USDCAD[index][2].y - USDCAD[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][2].y/9;
            }
            d_dea = USDCAD[index][2].y/9 - USDCAD[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = USDCAD[index][2].z;
            d_dif = USDCAD[index][2].z - USDCAD[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][2].z/9;
            }
            d_dea = USDCAD[index][2].z/9 - USDCAD[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = USDCAD[index][2].w;
            d_dif = USDCAD[index][2].w - USDCAD[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][2].w/9;
            }
            d_dea = USDCAD[index][2].w/9 - USDCAD[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = USDCAD[index][3].x;
            d_dif = USDCAD[index][3].x - USDCAD[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][3].x/9;
            }
            d_dea = USDCAD[index][3].x/9 - USDCAD[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = USDCAD[index][3].y;
            d_dif = USDCAD[index][3].y - USDCAD[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][3].y/9;
            }
            d_dea = USDCAD[index][3].y/9 - USDCAD[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = USDCAD[index][3].z;
            d_dif = USDCAD[index][3].z - USDCAD[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][3].z/9;
            }
            d_dea = USDCAD[index][3].z/9 - USDCAD[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = USDCAD[index][3].w;
            d_dif = USDCAD[index][3].w - USDCAD[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += USDCAD[index-j][3].w/9;
            }
            d_dea = USDCAD[index][3].w/9 - USDCAD[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 19:
        switch (time_length){
            case 1:
            dif = USDCHF[index][0].x;
            d_dif = USDCHF[index][0].x - USDCHF[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][0].x/9;
            }
            d_dea = USDCHF[index][0].x/9 - USDCHF[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = USDCHF[index][0].y;
            d_dif = USDCHF[index][0].y - USDCHF[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][0].y/9;
            }
            d_dea = USDCHF[index][0].y/9 - USDCHF[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = USDCHF[index][0].z;
            d_dif = USDCHF[index][0].z - USDCHF[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][0].z/9;
            }
            d_dea = USDCHF[index][0].z/9 - USDCHF[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = USDCHF[index][0].w;
            d_dif = USDCHF[index][0].w - USDCHF[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][0].w/9;
            }
            d_dea = USDCHF[index][0].w/9 - USDCHF[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = USDCHF[index][1].x;
            d_dif = USDCHF[index][1].x - USDCHF[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][1].x/9;
            }
            d_dea = USDCHF[index][1].x/9 - USDCHF[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = USDCHF[index][1].y;
            d_dif = USDCHF[index][1].y - USDCHF[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][1].y/9;
            }
            d_dea = USDCHF[index][1].y/9 - USDCHF[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = USDCHF[index][1].z;
            d_dif = USDCHF[index][1].z - USDCHF[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][1].z/9;
            }
            d_dea = USDCHF[index][1].z/9 - USDCHF[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = USDCHF[index][1].w;
            d_dif = USDCHF[index][1].w - USDCHF[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][1].w/9;
            }
            d_dea = USDCHF[index][1].w/9 - USDCHF[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = USDCHF[index][2].x;
            d_dif = USDCHF[index][2].x - USDCHF[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][2].x/9;
            }
            d_dea = USDCHF[index][2].x/9 - USDCHF[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = USDCHF[index][2].y;
            d_dif = USDCHF[index][2].y - USDCHF[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][2].y/9;
            }
            d_dea = USDCHF[index][2].y/9 - USDCHF[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = USDCHF[index][2].z;
            d_dif = USDCHF[index][2].z - USDCHF[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][2].z/9;
            }
            d_dea = USDCHF[index][2].z/9 - USDCHF[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = USDCHF[index][2].w;
            d_dif = USDCHF[index][2].w - USDCHF[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][2].w/9;
            }
            d_dea = USDCHF[index][2].w/9 - USDCHF[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = USDCHF[index][3].x;
            d_dif = USDCHF[index][3].x - USDCHF[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][3].x/9;
            }
            d_dea = USDCHF[index][3].x/9 - USDCHF[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = USDCHF[index][3].y;
            d_dif = USDCHF[index][3].y - USDCHF[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][3].y/9;
            }
            d_dea = USDCHF[index][3].y/9 - USDCHF[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = USDCHF[index][3].z;
            d_dif = USDCHF[index][3].z - USDCHF[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][3].z/9;
            }
            d_dea = USDCHF[index][3].z/9 - USDCHF[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = USDCHF[index][3].w;
            d_dif = USDCHF[index][3].w - USDCHF[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += USDCHF[index-j][3].w/9;
            }
            d_dea = USDCHF[index][3].w/9 - USDCHF[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
        case 20:
        switch (time_length){
            case 1:
            dif = USDJPY[index][0].x;
            d_dif = USDJPY[index][0].x - USDJPY[index-1][0].x;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][0].x/9;
            }
            d_dea = USDJPY[index][0].x/9 - USDJPY[index-9][0].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 2:
            dif = USDJPY[index][0].y;
            d_dif = USDJPY[index][0].y - USDJPY[index-1][0].y;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][0].y/9;
            }
            d_dea = USDJPY[index][0].y/9 - USDJPY[index-9][0].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 3:
            dif = USDJPY[index][0].z;
            d_dif = USDJPY[index][0].z - USDJPY[index-1][0].z;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][0].z/9;
            }
            d_dea = USDJPY[index][0].z/9 - USDJPY[index-9][0].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 4:
            dif = USDJPY[index][0].w;
            d_dif = USDJPY[index][0].w - USDJPY[index-1][0].w;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][0].w/9;
            }
            d_dea = USDJPY[index][0].w/9 - USDJPY[index-9][0].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 5:
            dif = USDJPY[index][1].x;
            d_dif = USDJPY[index][1].x - USDJPY[index-1][1].x;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][1].x/9;
            }
            d_dea = USDJPY[index][1].x/9 - USDJPY[index-9][1].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 10:
            dif = USDJPY[index][1].y;
            d_dif = USDJPY[index][1].y - USDJPY[index-1][1].y;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][1].y/9;
            }
            d_dea = USDJPY[index][1].y/9 - USDJPY[index-9][1].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 15:
            dif = USDJPY[index][1].z;
            d_dif = USDJPY[index][1].z - USDJPY[index-1][1].z;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][1].z/9;
            }
            d_dea = USDJPY[index][1].z/9 - USDJPY[index-9][1].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 30:
            dif = USDJPY[index][1].w;
            d_dif = USDJPY[index][1].w - USDJPY[index-1][1].w;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][1].w/9;
            }
            d_dea = USDJPY[index][1].w/9 - USDJPY[index-9][1].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 45:
            dif = USDJPY[index][2].x;
            d_dif = USDJPY[index][2].x - USDJPY[index-1][2].x;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][2].x/9;
            }
            d_dea = USDJPY[index][2].x/9 - USDJPY[index-9][2].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 60:
            dif = USDJPY[index][2].y;
            d_dif = USDJPY[index][2].y - USDJPY[index-1][2].y;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][2].y/9;
            }
            d_dea = USDJPY[index][2].y/9 - USDJPY[index-9][2].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 120:
            dif = USDJPY[index][2].z;
            d_dif = USDJPY[index][2].z - USDJPY[index-1][2].z;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][2].z/9;
            }
            d_dea = USDJPY[index][2].z/9 - USDJPY[index-9][2].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 180:
            dif = USDJPY[index][2].w;
            d_dif = USDJPY[index][2].w - USDJPY[index-1][2].w;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][2].w/9;
            }
            d_dea = USDJPY[index][2].w/9 - USDJPY[index-9][2].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 240:
            dif = USDJPY[index][3].x;
            d_dif = USDJPY[index][3].x - USDJPY[index-1][3].x;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][3].x/9;
            }
            d_dea = USDJPY[index][3].x/9 - USDJPY[index-9][3].x/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 360:
            dif = USDJPY[index][3].y;
            d_dif = USDJPY[index][3].y - USDJPY[index-1][3].y;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][3].y/9;
            }
            d_dea = USDJPY[index][3].y/9 - USDJPY[index-9][3].y/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 720:
            dif = USDJPY[index][3].z;
            d_dif = USDJPY[index][3].z - USDJPY[index-1][3].z;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][3].z/9;
            }
            d_dea = USDJPY[index][3].z/9 - USDJPY[index-9][3].z/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
            case 1440:
            dif = USDJPY[index][3].w;
            d_dif = USDJPY[index][3].w - USDJPY[index-1][3].w;
            for(int j=0; j<9; ++j){
                dea += USDJPY[index-j][3].w/9;
            }
            d_dea = USDJPY[index][3].w/9 - USDJPY[index-9][3].w/9;
            vertex_attri.vertex_data = vec4(dif, dea, d_dif, d_dea);
            break;
        }
        break;
    }
}