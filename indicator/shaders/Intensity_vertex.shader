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

out VertexAttri{
    mat4 intensity;
    mat4 intensity_last;
    mat4 intensity_dual;
    mat4 intensity_dual_last;
    int index;
}vertex_attri;

uniform mat4 projection;
uniform mat4 scaling;
uniform mat4 translation;
uniform int offset;
uniform int coin_pair_id;

void main() {
    vertex_attri.index = Candle_id;
    switch (coin_pair_id){
        case 0:
        vertex_attri.intensity = AUD[Candle_id+offset];
        vertex_attri.intensity_dual = CAD[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = AUD[Candle_id+offset];
            vertex_attri.intensity_dual_last = CAD[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = AUD[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = CAD[Candle_id+offset-1];
        }
        break;
        case 1:
        vertex_attri.intensity = AUD[Candle_id+offset];
        vertex_attri.intensity_dual = CHF[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = AUD[Candle_id+offset];
            vertex_attri.intensity_dual_last = CHF[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = AUD[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = CHF[Candle_id+offset-1];
        }
        break;
        case 2:
        vertex_attri.intensity = AUD[Candle_id+offset];
        vertex_attri.intensity_dual = JPY[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = AUD[Candle_id+offset];
            vertex_attri.intensity_dual_last = JPY[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = AUD[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = JPY[Candle_id+offset-1];
        }
        break;
        case 3:
        vertex_attri.intensity = AUD[Candle_id+offset];
        vertex_attri.intensity_dual = USD[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = AUD[Candle_id+offset];
            vertex_attri.intensity_dual_last = USD[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = AUD[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = USD[Candle_id+offset-1];
        }
        break;
        case 4:
        vertex_attri.intensity = CAD[Candle_id+offset];
        vertex_attri.intensity_dual = CHF[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = CAD[Candle_id+offset];
            vertex_attri.intensity_dual_last = CHF[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = CAD[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = CHF[Candle_id+offset-1];
        }
        break;
        case 5:
        vertex_attri.intensity = CAD[Candle_id+offset];
        vertex_attri.intensity_dual = JPY[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = CAD[Candle_id+offset];
            vertex_attri.intensity_dual_last = JPY[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = CAD[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = JPY[Candle_id+offset-1];
        }
        break;
        case 6:
        vertex_attri.intensity = CHF[Candle_id+offset];
        vertex_attri.intensity_dual = JPY[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = CHF[Candle_id+offset];
            vertex_attri.intensity_dual_last = JPY[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = CHF[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = JPY[Candle_id+offset-1];
        }
        break;
        case 7:
        vertex_attri.intensity = EUR[Candle_id+offset];
        vertex_attri.intensity_dual = AUD[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = EUR[Candle_id+offset];
            vertex_attri.intensity_dual_last = AUD[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = EUR[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = AUD[Candle_id+offset-1];
        }
        break;
        case 8:
        vertex_attri.intensity = EUR[Candle_id+offset];
        vertex_attri.intensity_dual = CAD[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = EUR[Candle_id+offset];
            vertex_attri.intensity_dual_last = CAD[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = EUR[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = CAD[Candle_id+offset-1];
        }
        break;
        case 9:
        vertex_attri.intensity = EUR[Candle_id+offset];
        vertex_attri.intensity_dual = CHF[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = EUR[Candle_id+offset];
            vertex_attri.intensity_dual_last = CHF[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = EUR[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = CHF[Candle_id+offset-1];
        }
        break;
        case 10:
        vertex_attri.intensity = EUR[Candle_id+offset];
        vertex_attri.intensity_dual = GBP[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = EUR[Candle_id+offset];
            vertex_attri.intensity_dual_last = GBP[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = EUR[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = GBP[Candle_id+offset-1];
        }
        break;
        case 11:
        vertex_attri.intensity = EUR[Candle_id+offset];
        vertex_attri.intensity_dual = JPY[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = EUR[Candle_id+offset];
            vertex_attri.intensity_dual_last = JPY[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = EUR[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = JPY[Candle_id+offset-1];
        }
        break;
        case 12:
        vertex_attri.intensity = EUR[Candle_id+offset];
        vertex_attri.intensity_dual = USD[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = EUR[Candle_id+offset];
            vertex_attri.intensity_dual_last = USD[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = EUR[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = USD[Candle_id+offset-1];
        }
        break;
        case 13:
        vertex_attri.intensity = GBP[Candle_id+offset];
        vertex_attri.intensity_dual = AUD[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = GBP[Candle_id+offset];
            vertex_attri.intensity_dual_last = AUD[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = GBP[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = AUD[Candle_id+offset-1];
        }
        break;
        case 14:
        vertex_attri.intensity = GBP[Candle_id+offset];
        vertex_attri.intensity_dual = CAD[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = GBP[Candle_id+offset];
            vertex_attri.intensity_dual_last = CAD[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = GBP[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = CAD[Candle_id+offset-1];
        }
        break;
        case 15:
        vertex_attri.intensity = GBP[Candle_id+offset];
        vertex_attri.intensity_dual = CHF[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = GBP[Candle_id+offset];
            vertex_attri.intensity_dual_last = CHF[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = GBP[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = CHF[Candle_id+offset-1];
        }
        break;
        case 16:
        vertex_attri.intensity = GBP[Candle_id+offset];
        vertex_attri.intensity_dual = JPY[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = GBP[Candle_id+offset];
            vertex_attri.intensity_dual_last = JPY[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = GBP[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = JPY[Candle_id+offset-1];
        }
        break;
        case 17:
        vertex_attri.intensity = GBP[Candle_id+offset];
        vertex_attri.intensity_dual = USD[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = GBP[Candle_id+offset];
            vertex_attri.intensity_dual_last = USD[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = GBP[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = USD[Candle_id+offset-1];
        }
        break;
        case 18:
        vertex_attri.intensity = USD[Candle_id+offset];
        vertex_attri.intensity_dual = CAD[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = USD[Candle_id+offset];
            vertex_attri.intensity_dual_last = CAD[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = USD[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = CAD[Candle_id+offset-1];
        }
        break;
        case 19:
        vertex_attri.intensity = USD[Candle_id+offset];
        vertex_attri.intensity_dual = CHF[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = USD[Candle_id+offset];
            vertex_attri.intensity_dual_last = CHF[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = USD[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = CHF[Candle_id+offset-1];
        }
        break;
        case 20:
        vertex_attri.intensity = USD[Candle_id+offset];
        vertex_attri.intensity_dual = JPY[Candle_id+offset];
        if (Candle_id+offset<1){
            vertex_attri.intensity_last = USD[Candle_id+offset];
            vertex_attri.intensity_dual_last = JPY[Candle_id+offset];
        }
        else {
            vertex_attri.intensity_last = USD[Candle_id+offset-1];
            vertex_attri.intensity_dual_last = JPY[Candle_id+offset-1];
        }
        break;

    }
}
