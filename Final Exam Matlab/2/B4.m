clc
clear all
syms p q
p(q)=sin(q)+4*q^3-exp(q);
p2=diff(p);
x=.5;tol=10^(-8);i=0;
disp('Iter         x          Abs_error')
while(abs(double(p(x)))>tol)
    x=x-double(p(x)/p2(x));
    i=i+1;
    fprintf('%3d    %12.9f   %12.9f\n',i,x,abs(double(p(x))))
end


