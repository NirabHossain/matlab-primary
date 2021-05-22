clc
clear all
syms q p
p(q)=sin(q)+4*q^3-exp(q);
p2=diff(p);
x=.5;tol=10^-7;i=0;
while(abs(double(p(x)))>tol)
    i=i+1;
    x=x-double(p(x)/p2(x));
    fprintf('%2d     %f\n',i,x)
end



