%   y'-y-t =0, y(0) = 0
y0=0;a=0;b=10;h=.1
[t,y]=ode23(@f1,[a b],y0);
[t1,y1]=euler(y0,a,b,h);
[t2,y2]=RK4(y0,a,b,h);
plot(t,y,t1,y1,t2,y2)
legend('Default','Euler','RK4')

