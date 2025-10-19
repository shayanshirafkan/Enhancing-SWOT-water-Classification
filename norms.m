function [e] = norms(ap,ae)
% ap is the predicted area;
% ae is the in-situ data;
e=abs(ap-ae);
e=sum(sum(e))/length(ae);
e=sqrt(e);
f=max(max(ap));
g=min(min(ap));
k=f-g;
e=e/k;
end