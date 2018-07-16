% Hanif Razin Rahmatullah
% Email  : hanifrazin@gmail.com
% Simulasi Program Pohon Keputusan (Decission Tree)

clc;clear all;close all

%% Data Latih
IPA = [8;7;7;8;6;7;7.5;7;7]
IPS = [8;8;7;9;7;9;8;7.5;7.5]
Bahasa = [7;8;8;8;8;8;7.5;7;8]

%Menggabungkan Data Latih
Data_Latih = [IPA IPS Bahasa]

%% Kelas/Target/Jurusan

% Array kelas tidak menggunakan kurung siku melainkan kurung kurawal karena
% datanya berupa string
Data_Kelas = {'IPA';'IPS';'BHS';'IPA';'BHS';'IPS';'IPA';'IPS';'BHS'}

%% Membuat percabangan
varnames = {'IPA';'IPS';'BHS'}

%% Membuat Data Uji
Data_uji = [7 7.3 8]

%% Membuat Pohon Keputusan
DecTreeModel = fitctree(Data_Latih,Data_Kelas,'MinParentSize',5,'ClassNames',varnames);
view(DecTreeModel,'mode','graph')
Prediksi_DecTree = predict(DecTreeModel,Data_uji)
