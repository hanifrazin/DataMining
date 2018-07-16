% Hanif Razin Rahmatullah
% Email  : hanifrazin@gmail.com
% Simulasi Program KNN (K-Nearest Neighbor)

clc;clear all;close all

%% Data Latih
IPK = [0.8;1.2;1;2;0.7;2.5;3;3;3;3.5;2.5;2.6;0.5;1]
TM = [0.8;1;1.2;1.5;1.5;3;2.5;2;3;3.9;3.5;3.6;0.5;2] %TM = Tingkat Kemiskinan

%Menggabungkan Data Latih
Data_Latih = [IPK TM]

%% Kelas/Target/Perolehan Beasiswa
Perolehan_Beasiswa = [0;0;0;0;0;1;1;1;1;1;1;1;0;0]

%% Membuat Data Uji
Data_uji = [3.2 2.4]

%% Klasifikasi KNN (K-Nearest Neighbor)
KnnModel = fitcknn(Data_Latih,Perolehan_Beasiswa);
Prediksi_Knn = predict(KnnModel,Data_uji)
Hasil = 'Null';
if isequal(Prediksi_Knn,1)
    Hasil = 'Mendapat Beasiswa';
else
    Hasil = 'Tidak Mendapat Beasiswa';
end
Hasil

[IndexKnn,ValKnn_Index] = knnsearch(Data_Latih,Data_uji,'k',1,'distance','euclidean')