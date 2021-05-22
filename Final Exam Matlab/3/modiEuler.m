function [t,y]=modiEuler(y0,a,b,h)
    y(1)=y0;t(1)=a;n=(b-a)/h;
    for i=1:n
        y(i+1)=y(i)+f(t(i),y(i))*h;
        t(i+1)=t(i)+h;
        y(i+1)=y(i)+.5*h*(f(t(i),y(i))+f(t(i+1),y(i+1)));
    end
end
