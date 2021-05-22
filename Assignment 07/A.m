'01'
clc
clear all
syms x y
u=1+y^2;
v=x-1;
stm=int(v/u,x)
[x y]=meshgrid(-6:6,-6:6);
streamslice(x,y,subs(u),subs(v))



%%%%%%%%%%Output%%%%%%%%%%%