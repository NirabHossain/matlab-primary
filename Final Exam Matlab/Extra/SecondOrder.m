%y''-2y' + 2y = e2t sin t,0 ? t ? 1, 
% with y(0) = ?0.4, y(0) = ?0.6
clc
clear all
y0=[0 -1 1];a=0;b=1;h=.25;
[t,y]=euler2(y0,a,b,h);
[t1,y1]=RK42(y0,a,b,h);
[t2,y2]=ode23(@f,[a b],y0);

%Solved_by_Euler=[t' y']

Solved_by_RK4=[t' y1']



plot(t,y,'g-',t,y1,'r')
legend('Euler y1prime','Euler y1','Euler y2','RK4 y1prime','RK4 y1','RK4 y2')
