clear
clc
close all

% load PIXC data
dirlist2 = dir('E:\DEMO');
dirlist2(1:7,:)=[]

% define boundary of the lake;

a1=34.024;
a2=34.078;
a3=50.609;
a4=50.627;

% load occ data;

L1=load('lon.mat');
L2=load('lat.mat');
L3=load('o.mat');
L1=L1.lon;
L2=L2.lat;
L3=L3.o1;  

L1=double(L1);
L2=double(L2);
L3=double(L3);

[X] = trianingphase(dirlist2,a1,a2,a3,a4,L1,L2,L3);
filename = 'A.mat';
save('A.mat');

ncfile= 'SWOT_L2_HR_PIXC_014_094_095L_20240420T192006_20240420T192017_PIC0_01.nc' ;

t=6;
[A5] = testingphase(ncfile,a1,a2,a3,a4,L1,L2,L3,t);

filename = 'A5.mat';
save('A5.mat');