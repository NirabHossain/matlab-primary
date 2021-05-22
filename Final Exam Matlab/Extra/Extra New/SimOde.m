y0=[2 1];ts=[0 20];
[t,y]=ode45(@f,ts,y0);
[t1,y1]=RK4(y0,ts,h);
plot(t,y,'r*',t1,y1,'g')
