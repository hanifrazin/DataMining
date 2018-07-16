clc;clear all;close all;

%% Klasifikasi KNN dengan data set buatan
load('set_data_buatan.mat');
idx_latih = [1:8 10:18];
idx_uji = [9];
data_latih = Set_Data_Buatan(idx_latih,1:2);
data_uji = Set_Data_Buatan(idx_uji,1:2);
kelas_latih = Set_Data_Buatan(idx_latih,3);
K=1;
KnnModel = fitcknn(data_latih,kelas_latih,'NumNeighbors',K);
kelas_uji_knn = predict(KnnModel,data_uji)
[idx_buatan,valIdx_buatan] = knnsearch(data_latih,data_uji,'k',K,'distance','euclidean')

%% Klasifikasi KNN dengan data set 2 dimensi
load('set_data_vertebral.mat');
group = ismember(Set_Data_Vertebral(:,6),1);
[idx_latih,idx_uji] = crossvalind('holdOut',group,0.2);
data_latih2 = Set_Data_Vertebral(idx_latih,1:6);
data_uji2 = Set_Data_Vertebral(idx_uji,1:6);
kelas_latih2 = Set_Data_Vertebral(idx_latih,6);
K2=1;
KnnModel2 = fitcknn(data_latih2,kelas_latih2,'NumNeighbors',K2);
kelas_uji_knn2 = predict(KnnModel2,data_uji2)
[idx_buatan2,valIdx_buatan2] = knnsearch(data_latih2,data_uji2,'k',K2,'distance','euclidean')