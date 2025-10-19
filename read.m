clear
clc
close all

a1=34.024;
a2=34.078;
a3=50.609;
a4=50.627;


load('A5.mat');
A1=A5;
% read the predicted class of input data;
p=dlmread('PD.txt');
lon1=[];
lat1=[];
sig1=[];
h1=[];
p1=[];
o1=[];
for i=1:length(p);
if p(i,1)==1;
lon1=[A1(i,1);lon1];
lat1=[A1(i,2);lat1];
sig1=[A1(i,4);sig1];
h1=[A1(i,3);h1];
p1=[p(i,1);p1];
o1=[A1(i,22);o1];
end
end

s1=15*ones(length(p1(:)),1);
figure;
scatter(lon1(:),lat1(:),s1,p1(:),'filled')
xlim([a3-0.001,a4+0.003]);


k = boundary(lon1,lat1);
x=lon1(k);
y=lat1(k);
figure;
plot(x,y)


[x1,y1]=ll2utm(x,y);
figure;
plot(y1,x1)
ap1=polyarea(x1,y1);