clc
y0=2*pi;a=0;b=.5;h=.5;z0=0;
[t2,y2]=    RkD2(y0,z0,a,b,h);
plot(t2,y2)