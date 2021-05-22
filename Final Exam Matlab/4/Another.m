clc
clear
a=0;b=2;y0=.5;h=.2;
t(1)=a;y(1)=y0;y1(1)=y0;y2(1)=y0;ye(1)=y0;
n=(b-a)/h;
for i=2:n+1
    t(i)=t(i-1)+h;
    y(i) =(t(i)+1)^2-.5*exp(t(i));
    ye(i)=(t(i)+1)^2-.5*exp(t(i));
    y1(i)=(t(i)+1)^2-.5*exp(t(i));
    y2(i)=(t(i)+1)^2-.5*exp(t(i));
end

for i=4:n
    t(i+1)=t(i)+h;    
    y1(i+1)=y1(i)+(h/24)*(55*f(t(i),y1(i))-59*f(t(i-1),y1(i-1))+37*f(t(i-2),y1(i-2))-9*f(t(i-3),y1(i-3)));
    ey1(i+1)=abs(y1(i+1)-ye(i+1));
    y2(i+1)=y2(i)+(h/24)*(9*f(t(i+1),y2(i+1))+19*f(t(i),y2(i))-5*f(t(i-1),y2(i-1)+f(t(i-2),y2(i-2))));
    ey2(i+1)=abs(y2(i+1)-ye(i+1));
    y(i+1)=y(i)+(h/24)*(9*f(t(i+1),y1(i+1))+19*f(t(i),y(i))-5*f(t(i-1),y(i-1))+f(t(i-2),y(i-2)));
    ey(i+1)=abs(y(i+1)-ye(i+1));
end

disp('        T      Exact_______AB________AM________CP______Eab_______Eam_______Ecp_')
Table=[t' ye' y1' y2' y' ey1' ey2' ey']

plot(t,ye,'rd',t,y1,'k*',t,y2,'go',t,y,'b',t,ey1,t,ey2,t,ey);
legend('Exact','AB','AM','CP','Eab','Eam','Epc')

