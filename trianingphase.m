function [X] = trianingphase(dirlist2,a1,a2,a3,a4,L1,L2,L3)
%dirlist2 is dictionary of PIXC data;
%a1, a2, a3 ,a4 are boundary limit of the lake;
%L1 is lon.mat of occurcne data;
%L2 is lat.mat of occurcne data;
%L3 is occ.mat of occurcne data;
A=[];
for ld=1:5
y2=dirlist2(ld);
ncfile= y2.name ;
[lon,lat,c,h,s,sig,ph,in1,in2,yp1,yp2,xp1,xp2,wt,inc,geo,p,cp,mp,br,sp] =swotlakecl(ncfile,a1,a2,a3,a4);

F = scatteredInterpolant(L1,L2,L3);
ok= F(lon,lat);

w1=zeros(length(ok),1);
for i=1: length(ok);
if ok(i,1)>95
 w1(i,1)=1;
else
w1(i,1)=0;
end
end

t1=ld*ones(length(h),1);

A1=[lon,lat,h,sig,ph,in1,in2,yp1,yp2,xp1,xp2,wt,inc,geo,p,cp,mp,br,sp,t1,ok,w1];
X=[A;A1];
end
end