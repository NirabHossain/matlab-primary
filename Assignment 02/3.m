clc
clear all
a=.5;b=2;tol=10^(-8);i=1;c=b-rf(b)*(b-a)/(rf(b)-rf(a));
disp('Iter         x          Abs_error')
while(abs(rf(c))>tol)
    fprintf('%3d    %12.9f   %12.9f\n',i,c,abs(rf(c)))
    c=b-rf(b)*(b-a)/(rf(b)-rf(a));
    i=i+1;
    if(rf(a)*rf(c)>0)
        a=c;
    else
        b=c;
    end
end
