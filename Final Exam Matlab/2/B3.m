clc
clear all
i=0;a=.5;b=2;c=a-fb3(a)*(b-a)/(fb3(b)-fb3(a));tol=10^-7;
disp('Iter       fn       Abs_error    Relative_Error   Percentage_Error')
disp('==================================================================')
while(abs(fb3(c))>tol)
    i=i+1;
    fprintf(' %2d     %f     %f        %f         %f\n',i,c,abs(fb3(c)),abs(fb3(c))/c,100*abs(fb3(c))/c)
    if(fb3(a)*fb3(c)>0)
        a=c;
    else
        b=c;
    end
    c=a-fb3(a)*(b-a)/(fb3(b)-fb3(a));
end
disp('==================================================================')
