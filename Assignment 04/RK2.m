function [t,y]=RK2(y0,a,b,h)
    t(1)=a;n=(b-a)/h;y(1)=y0;
    for i=1:n
        t(i+1)=t(i)+h;
        k1=h*f(t(i),y(i));
        k2=h*f(t(i)+h/2,y(i)+k1/2);
        y(i+1)=y(i)+(k1+k2)/2;
    end    
end
