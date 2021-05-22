function [t,y]=euler(y0,a,b,h)
    t(1)=a;n=(b-a)/h;y(1)=y0;
    for i=1:n
        t(i+1)=t(i)+h;
        y(i+1)=y(i)+h*f1(t(i),y(i));
    end
end