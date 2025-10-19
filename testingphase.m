function [A5] = testingphase(ncfile,a1,a2,a3,a4,L1,L2,L3,t)
%ncfile is PIXC data of the input;
%a1, a2, a3 ,a4 are boundary limit of the lake;
%L1 is lon.mat of occurcne data;
%L2 is lat.mat of occurcne data;
%L3 is occ.mat of occurcne data;
% t is time step;

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

t1=t*ones(length(h),1);

A5=[lon,lat,h,sig,ph,in1,in2,yp1,yp2,xp1,xp2,wt,inc,geo,p,cp,mp,br,sp,t1,ok,w1];

end