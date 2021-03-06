%y''-2y' + 2y = e2t sin t,0 ? t ? 1, 
% with y(0) = ?0.4, y(0) = ?0.6
clc
clear all
y0=[-.4 -.6];a=0;b=1;h=.1;
[t,y]=euler2(y0,a,b,h);
[t1,y1]=RK42(y0,a,b,h);
[t2,y2]=ode23(@f,[a b],y0);
[t' y1']
plot(t,y,'gd',t,y1,'kd')
legend('Euler yprime','Euler y','RK4 yprime','RK4 y')
