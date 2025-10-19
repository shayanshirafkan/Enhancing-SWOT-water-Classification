function [kge] = kgef(ae,ap)
% ap is the predicted area;
% ae is the in-situ data;

for i=1:length(ap);
 e(i,1)=(ap(i,1)-mean(ap))*(ae(i,1)-mean(ae));
end

for i=1:length(ap);
 f(i,1)=(ap(i,1)-mean(ap))^2;
end

for i=1:length(ap);
 g(i,1)=(ae(i,1)-mean(ae))^2;
end
e=sum(sum(e));
f=sum(sum(f));
f=sqrt(f);
g=sum(sum(g));
g=sqrt(g);

rp=e/(f*g);

bb=mean(ap)/mean(ae);
aa=var(ap)/var(ae);

kge=1-sqrt((rp-1)^2+(bb-1)^2+(aa-1)^2);
end