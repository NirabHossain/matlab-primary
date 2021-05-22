clc
clear all
syms x y
a=2;
phi=a*x^3/3-a*x*y^2-2
u=diff(phi,x)
v=diff(phi,y)
chi=int(u,y);
chi=chi+int(-v-diff(chi,x),x)
[x,y]=meshgrid(-6:6,-6:6);
streamslice(x,y,subs(u),subs(v))

