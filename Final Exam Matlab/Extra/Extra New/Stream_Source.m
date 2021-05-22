clc
clear all
syms x y r t
a=0;b1=5;b2=-5;m=-.314;
phi1=m/(2*pi)*log(sqrt((x-a)^2+(y-b1)^2));
phi2=m/(2*pi)*log(sqrt((x-a)^2+(y-b2)^2));
phi=vpa(phi1+phi2);
u=diff(phi,x);
v=diff(phi,y);
chi=int(u,y);
chi=chi+int(-v-diff(chi,x),x);
Stream_Cartesian=chi
stream_Polar=simplify(subs(chi,{x,y},{r*cos(t),r*sin(t)}))
[x,y]=meshgrid(-10:.33:10,-10:.33:10);
streamslice(x,y,subs(u),subs(v))
grid on


