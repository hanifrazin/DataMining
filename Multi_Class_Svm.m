% Hanif Razin Rahmatullah
% Email  : hanifrazin@gmail.com
% Simulasi Program SVM (Support Vector Machine)

clc;clear all;close all

%% Data Latih
Nilai_IPA = [8;7;7;8;6;7;7.5;7]
Nilai_IPS = [8;8;7;9;7;9;8;7.5]
Nilai_BHS = [7;8;8;8;8;7.5;7;8]

%Menggabungkan Data Latih
Data_Latih = [Nilai_IPA  Nilai_IPS Nilai_BHS]

%% Kelas/Target/Jurusan
%  Keterangan
%  1 = IPA
%  2 = IPS
%  3 = BHS
Jurusan = [1;2;3;2;3;2;2;3]

%% Membuat Data Uji
Data_uji = [4 8 6]

%% Klasifikasi Multi SVM One vs One
SvmModel = fitcecoc(Data_Latih,Jurusan);
Prediksi_Svm = predict(SvmModel,Data_uji)
Kelas = 'test';
if isequal(Prediksi_Svm,1)
    Kelas = 'IPA';
elseif isequal(Prediksi_Svm,2)
    Kelas = 'IPS';
elseif isequal(Prediksi_Svm,3)
    Kelas = 'BAHASA';
end
Kelas