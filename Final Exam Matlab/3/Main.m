clc
clear
y0=2.562;a=1950;b=2050;h=5;
%y0=.5;a=0;b=2;h=.2;
[ t, y]=euler(y0,a,b,h);
[t1,y1]=modiEuler(y0,a,b,h);
[t2,y2]=RK2(y0,a,b,h);
[t3,y3]=RK4(y0,a,b,h);
[t4,y4]=ode23(@f,a:h:b,y0);
[t5,y5]=ode23(@f,a:h:b,y0);

plot(t,y,t1,y1,t2,y2,'rd',t3,y3,'ob',t4,y4,t5,y5,'*')
legend('Euler','ModiEuler','RK2','RK4','ode23','ode45')


