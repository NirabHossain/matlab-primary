clc
syms x y
u=1+y^2;
v=x-1;
[x,y]=meshgrid(-6:6,-6:6);
streamslice(x,y,subs(u),subs(v))
