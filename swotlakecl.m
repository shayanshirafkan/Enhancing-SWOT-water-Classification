function [lon,lat,c,h,s,sig,ph,in1,in2,yp1,yp2,xp1,xp2,wt,inc,geo,p,cp,mp,br,sp] =swotlakecl(ncfile,a1,a2,a3,a4);
% extract differnet features of data accordning the lake boundary;
ncinfo(ncfile);
ncdisp(ncfile);
% ncfile=sw;
lon= ncread(ncfile,'/pixel_cloud/longitude');
lat = ncread(ncfile , '/pixel_cloud/latitude');
h=ncread(ncfile,'/pixel_cloud/height');
c=ncread(ncfile,'/pixel_cloud/classification');
sig=ncread(ncfile,'/pixel_cloud/sig0');
ph=ncread(ncfile,'/pixel_cloud/phase_noise_std');
in=ncread(ncfile,'/pixel_cloud/interferogram');
in1=in(1,:)';
in2=in(2,:)';
yp1=ncread(ncfile,'/pixel_cloud/power_plus_y');
yp2=ncread(ncfile,'/pixel_cloud/power_minus_y');
xp1=ncread(ncfile,'/pixel_cloud/x_factor_plus_y');
xp2=ncread(ncfile,'/pixel_cloud/x_factor_minus_y');
wt=ncread(ncfile,'/pixel_cloud/water_frac');
geo=ncread(ncfile,'/pixel_cloud/phase_unwrapping_region');
p=ncread(ncfile,'/pixel_cloud/ambiguity_cost1');
cp=ncread(ncfile,'/pixel_cloud/coherent_power');
mp=ncread(ncfile,'/pixel_cloud/false_detection_rate');
sp=ncread(ncfile,'/pixel_cloud/missed_detection_rate');
inc=ncread(ncfile,'/pixel_cloud/inc');
br=ncread(ncfile,'/pixel_cloud/bright_land_flag');

lon(any(lat<a1, 2),:)=[];
h(any(lat<a1, 2),:)=[];
c(any(lat<a1, 2),:)=[];
sig(any(lat<a1, 2),:)=[];
ph(any(lat<a1, 2),:)=[];
in1(any(lat<a1, 2),:)=[];
in2(any(lat<a1, 2),:)=[];
yp1(any(lat<a1, 2),:)=[];
yp2(any(lat<a1, 2),:)=[];
xp1(any(lat<a1, 2),:)=[];
xp2(any(lat<a1, 2),:)=[];
wt(any(lat<a1, 2),:)=[];
inc(any(lat<a1, 2),:)=[];
geo(any(lat<a1, 2),:)=[];
p(any(lat<a1, 2),:)=[];
cp(any(lat<a1, 2),:)=[];
mp(any(lat<a1, 2),:)=[];
br(any(lat<a1, 2),:)=[];
sp(any(lat<a1, 2),:)=[];

lat(any(lat<a1, 2),:)=[];


lon(any(lat>a2, 2),:)=[];
h(any(lat>a2, 2),:)=[];
c(any(lat>a2, 2),:)=[];
sig(any(lat>a2, 2),:)=[];
ph(any(lat>a2, 2),:)=[];
in1(any(lat>a2, 2),:)=[];
in2(any(lat>a2, 2),:)=[];
yp1(any(lat>a2, 2),:)=[];
yp2(any(lat>a2, 2),:)=[];
xp1(any(lat>a2, 2),:)=[];
xp2(any(lat>a2, 2),:)=[];
wt(any(lat>a2, 2),:)=[];
inc(any(lat>a2, 2),:)=[];
geo(any(lat>a2, 2),:)=[];
p(any(lat>a2, 2),:)=[];
cp(any(lat>a2, 2),:)=[];
mp(any(lat>a2, 2),:)=[];
br(any(lat>a2, 2),:)=[];
sp(any(lat>a2, 2),:)=[];

lat(any(lat>a2, 2),:)=[];


lat(any(lon<a3, 2),:)=[];
h(any(lon<a3, 2),:)=[];
c(any(lon<a3, 2),:)=[];
sig(any(lon<a3, 2),:)=[];
ph(any(lon<a3, 2),:)=[];
in1(any(lon<a3, 2),:)=[];
in2(any(lon<a3, 2),:)=[];
yp1(any(lon<a3, 2),:)=[];
yp2(any(lon<a3, 2),:)=[];
xp1(any(lon<a3, 2),:)=[];
xp2(any(lon<a3, 2),:)=[];
wt(any(lon<a3, 2),:)=[];
inc(any(lon<a3, 2),:)=[];
geo(any(lon<a3, 2),:)=[];
p(any(lon<a3, 2),:)=[];
cp(any(lon<a3, 2),:)=[];
mp(any(lon<a3, 2),:)=[];
br(any(lon<a3, 2),:)=[];
sp(any(lon<a3, 2),:)=[];

lon(any(lon<a3, 2),:)=[];


lat(any(lon>a4, 2),:)=[];
h(any(lon>a4, 2),:)=[];
c(any(lon>a4, 2),:)=[];
sig(any(lon>a4, 2),:)=[];
ph(any(lon>a4, 2),:)=[];
in1(any(lon>a4, 2),:)=[];
in2(any(lon>a4, 2),:)=[];
yp1(any(lon>a4, 2),:)=[];
yp2(any(lon>a4, 2),:)=[];
xp1(any(lon>a4, 2),:)=[];
xp2(any(lon>a4, 2),:)=[];
wt(any(lon>a4, 2),:)=[];
inc(any(lon>a4, 2),:)=[];
geo(any(lon>a4, 2),:)=[];
p(any(lon>a4, 2),:)=[];
cp(any(lon>a4, 2),:)=[];
mp(any(lon>a4, 2),:)=[];
br(any(lon>a4, 2),:)=[];
sp(any(lon>a4, 2),:)=[];

lon(any(lon>a4, 2),:)=[];

s=15*ones(length(lon(:)),1);
end


