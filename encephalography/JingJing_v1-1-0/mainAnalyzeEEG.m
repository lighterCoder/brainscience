% mainAnalyzeEEG.m
% Author: Jingjing(haojingjing.hjj@foxmail.com)
% Date: July,2018

addpath('../../Literature/eeglab13_5_4b/');
% addpath('../../Literature/eeglab14_1_2b/');

%% Find data source
% make sure you have XXX.fdt file under the same directory
homeDIR = '../../../../Dropbox/WithJingJing/Recordings/JJH_RECORDINGS/2018/';
currentDIR = '/28062018/EEG_DATA_PR_EPROCESSING/';

directEEGpre = pop_biosig(strcat(strcat(homeDIR, currentDIR),'EO90_3.edf'));
directEEG = pop_loadset('clear.set',strcat(homeDIR, currentDIR));

%% Extract source data
af3 = find(strcmp({directEEGpre.chanlocs.labels}, 'AF3'));
af4 = find(strcmp({directEEGpre.chanlocs.labels}, 'AF4'));
rawEEG = directEEG.data;
rawEEGpre = directEEGpre.data(af3:af4,:);

%% Compute EEG by doing Fourier Transform
[FCCdBpre, FCCpre] = computeFCC(directEEGpre);
[FCCdB, FCC] = computeFCC(directEEG); 

%% Plot out Fourier 3-D Represent before and after removing artifacts
subplot(1,2,1);mesh(squeeze(FCCdBpre(1,2:45,:)));
xlabel('Experiment Time');ylabel('Fourier Frequency');
zlabel('Fourier Coefficient in dB');
title('Before removing artifacts');
subplot(1,2,2);mesh(squeeze(FCCdB(1,2:45,:)));
xlabel('Experiment Time');ylabel('Fourier Frequency');
zlabel('Fourier Coefficient in dB');
title('After removing');

%% Remark  
%  Qiumei(qiumei1101381170@gmail.com) from National Key Laboratory of 
%  Cognitive Neuroscience and Learning, Beijing Normal University,
%  helped to preprocess three datasets as listed
%  below. EO90_3.edf--->clear.set
