function [t,y]=RK4(y0,a,b,h)
    y(1)=y0;t(1)=a;n=(b-a)/h;
    for i=1:n
        k1=h*f(t(i),y(i));
        k2=h*f(t(i)+h/2,y(i)+k1/2);
        k3=h*f(t(i)+h/2,y(i)+k2/2);
        k4=h*f(t(i)+h,y(i)+k3);
        y(i+1)=y(i)+(k1+2*k2+k3*2+k4)/6;
        t(i+1)=t(i)+h;
    end
end