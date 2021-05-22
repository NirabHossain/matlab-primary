function [t,y]=RK2(y0,a,b,h)
    y(1)=y0;t(1)=a;n=(b-a)/h;
    for i=1:n
        t(i+1)=t(i)+h;
        k1=h*f(t(i),y(i));
        k2=h*f(t(i)+h,y(i)+k1);
        y(i+1)=y(i)+(k1+k2)/2;
    end
end