clc
clear all
syms x y
u=.5*x^2-x^3/3;
v=x*(x-1)*(y+1);
disp('Motion is=')
if(simplify(diff(u,x)+diff(v,y))==0)
    disp('          (i) possible')
else
    disp('          (i)Impossible')
end
if(simplify(diff(v,x)-diff(u,y))==0)
    disp('         (ii) Irrotational')
else
    disp('         (ii) Rotational')
end
k1=solve(u==0,x);
k2=solve(v==0,y);
k3(1:3)=k2;
Stagnation_Points=[k1 k3']




