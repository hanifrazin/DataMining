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

k=3;
KnnDaging = fitcknn(Data_Latih,Daging,'NumNeighbors',k,'Standardize',1);
Prediksi = predict(KnnDaging,Data_Uji);
[idxKnn,valIdxKnn] = knnsearch(Data_Latih,Data_Uji,'k',k,'distance','euclidean');
disp('Nilai Knn terkecil');valIdxKnn
disp('Index Knn terkecil');idxKnn
disp('Hasil Prediksi KNN');Prediksi