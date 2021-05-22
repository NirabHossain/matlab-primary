a=.5;b=2;tol=10^-8;c=1.5;i=0;
while(abs(f2(c))>tol)
    c=a-f2(a)*(b-a)/(f2(b)-f2(a));
    i=i+1;
    fprintf('%3d   %f     %f\n',i,c,abs(f2(c)))
    if(f2(a)*f2(c)>0)
        a=c;
    else
        b=c;
    end
end


