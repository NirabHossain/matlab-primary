clc
syms p(q)
k=12;r=.026;
p=r*q*(1-q/k);
y0=2.562;a=1950;b=2050;h=5;n=(b-a)/h;



[t2,y2]=    euler(y0,a,b,h);
[t1,y1]=analytic(y0,a,b,h);
[t3,y3]=    eModi(y0,a,b,h);
[t4,y4]=      RK2(y0,a,b,h);
[t5,y5]=      RK4(y0,a,b,h);
[t6,y6]= ode23(@f,a:h:b,y0);
[t7,y7]= ode45(@f,a:h:b,y0);
plot(t1,y1,t2,y2,'*',t3,y3,'.',t4,y4,'s',t5,y5,'kd',t6,y6,'-.',t7,y7,'bd')
legend('Euler','ModiEuler','RK2','RK4','ODE23','ODE45','Exact')
