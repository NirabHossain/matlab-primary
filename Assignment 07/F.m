clc
clear all
syms x y r t
a=0;b=5;m=-.314;
phi1=(m/2*pi)*log(sqrt((x-a)^2+(y-b)^2))
a=0;b=-5;
phi2=(m/2*pi)*log(sqrt((x-a)^2+(y-b)^2))
u=diff(phi1+phi2,x)
v=diff(phi1+phi2,y)
[x,y]=meshgrid(1:6,1:6);
streamslice(x,y,subs(u),subs(v))
