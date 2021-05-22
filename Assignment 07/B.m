'02'

clc
clear all
syms x y 
u=.5*x^2-x^3/3;
v=x*(x-1)*(y+1);
if(simple(diff(u,x)+diff(v,y))==0)
    disp('Motion is possible')
else
    disp('Motion is not possible')
end

if(simple(diff(v,x)+diff(u,y))==0)
    disp('Motion is irrotational')
else
    disp('Motion is rotational')
end
u1=solve(u,x);
v1=solve(v,y);
v1(1:length(u1))=v1;
Stagnation_Points=[u1,v1']



%%%%%%%%%%Output%%%%%%%%%%%