clc;clear all;close all;

%% Nilai Ekstraksi Ciri
Rata2 = [51.1111;57.2222;50.3333;61.8889;51.7778;50;62.4444;64.1111;62;62.7778]
Stdv = [30.8522;25.2279;18.6815;15.447;20.3087;21.2603;23.2385;29.8891;27.3587;32.9043]
Var = [951.8611;636.4444;349;238.6111;412.4444;452;540.0278;893.3611;748.5;1082.7]
Median = [45;63;48;62;53;38;65;70;64;74]
Data_Latih = [Rata2 Stdv Var Median]

%% Kelas
Daging = {'SAPI','SAPI','SAPI','SAPI','SAPI','BABI','BABI','BABI','BABI','BABI'}

%% Data Uji
Data_Uji = [56	18.9737	360	57]

BayesDaging = fitcnb(Data_Latih,Daging)
[Prediksi,Posterior] = predict(BayesDaging,Data_Uji);
disp('Nilai Posterior Daging Babi');Posterior(1)
disp('Nilai Posterior Daging Sapi');Posterior(2)
disp('Nilai Posterior Terbesar');max(Posterior(1),Posterior(2))
disp('Hasil Prediksi ');Prediksi
