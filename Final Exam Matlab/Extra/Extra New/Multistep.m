clc
clear all
a=0;b=2;h=.2;y0=.5;
t(1)=a;y(1)=y0;n=(b-a)/h;
for i=1:n+1
    ye(i)=(t(i)+1)^2-.5*exp(t(i));
        t(i+1)=t(i)+h;
end
[t,y]=RK4(y0,[a b],h);
[t1,y1]=RK4(y0,[a b],h);
[t2,y2]=RK4(y0,[a b],h);
for i=4:n-1
    y1(i+1)=y1(i)+h/24*(55*f(t(i),y1(i))-59*f(t(i-1),y1(i-1))+37*f(t(i-2),y1(i-2))-9*f(t(i-3),y1(i-3)));
    y2(i+1)=y2(i)+h/24*(9*f(t(i+1),y2(i+1))+19*f(t(i),y2(i))-5*f(t(i-1),y2(i-1))+f(t(i-2),y2(i-2)));
    y(i+1)=y(i)+h/24*(9*f(t(i+1),y1(i+1))+19*f(t(i),y(i))-5*f(t(i-1),y(i-1))+f(t(i-2),y(i-2)));
    t(i+1)=t(i)+h;
end
[ye'  y' abs(ye'-y')/100]
plot(t,ye,t,y)