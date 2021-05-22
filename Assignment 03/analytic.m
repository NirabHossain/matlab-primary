function [t,y]=analytic(y0,a,b,h)
    t(1)=a;n=(b-a)/h;y(1)=y0;k=12;r=.026;
    for i=1:n
        t(i+1)=t(i)+h;
        y(i+1)=y0*k/(y0+(k-y0)*exp(r*(t(i+1)-a)));
    end
end
