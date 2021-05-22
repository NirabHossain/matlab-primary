clc
clear
syms x y r t
a=0;b1=5;b2=-5;m=-.314;
phi1=m/(2*pi)*log(sqrt((x-a)^2+(y-b1)^2))
phi2=m/(2*pi)*log(sqrt((x-a)^2+(y-b2)^2))

u=diff(phi1+phi2,x);
v=diff(phi1+phi2,y);
chi1=m/(2*pi)*atan((y-b1)/(x-a));
chi2=m/(2*pi)*atan((y-b2)/(x-a));
chi=chi1+chi2
[x,y]=meshgrid(-10:1.33:10,-10:1.33:10);
streamslice(x,y,subs(u),subs(v))
grid on
