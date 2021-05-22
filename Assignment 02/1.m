clc
clear all
tol=.000001;a=-1;b=0;c=(a+b)/2;i=1;
disp('Iter         a             b             c          |f(c)|')
disp('===========================================================')
while(abs(f(c))>tol)
    fprintf('%3d    %10.5f    %10.5f    %10.5f    %10.7f\n',i,a,b,c,abs(f(c)))
    if(f(a)*f(c)>0)
        a=c;
    else
        b=c;
    end
    i=i+1;c=(a+b)/2;
end

