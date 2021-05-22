clc 
clear

a=0;b=-1;i=0;tol=10^-5;c=(a+b)/2;
disp('Iter     a           b           Pn           |f(pn)|')
while(abs(fb1(c))>tol)
    i=i+1;
    fprintf(' %d  %f     %f    %f     %f\n',i,a,b,c,abs(fb1(c)));
    if(fb1(a)*fb1(c)>0)
        a=c;
    else
        b=c;
    end
    c=(a+b)/2;
end
The_root_is=c
