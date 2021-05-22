clc
clear
y0=-.4;z0=-.6;a=0;b=1;h=.1;
x_0 = [y0,z0];
tspan = [a,b];
[t,y] = ode45(@f,tspan,x_0);
hold on
plot(t,y(1),'go')
plot(t,y(2),'r-*')
hold off

