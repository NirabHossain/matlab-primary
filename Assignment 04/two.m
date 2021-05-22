clc
y0=.5;a=0;h=.2;b=2;n=(b-a)/h;
t=a:h:b;
y=(t+1).^2-.5*exp(t);
for i=1:4
    [~,y1]=RK2(y0,a,b,h);
    [~,y2]=RK2(y0,a,b,h);
    [t,y3]=RK2(y0,a,b,h);
end

for i=4:n
    y1(i+1)=y1(i) +h/24*(   55*f(t(i),y1(i))  -59*f(t(i-1),y1(i-1))+37*f(t(i-2),y1(i-2))-9*f(t(i-3),y1(i-3)));
    y2(i+1)=y2(i) +h/24*(9*f(t(i+1),y2(i+1))  +19*f(t(i),y2(i))    -5*f( t(i-1),y2(i-1))+  f(t(i-2),y2(i-2)));
    y3(i+1)=y3(i) +h/24*(9*f(t(i+1),y2(i+1))  +19*f(t(i),y3(i))    -5*f( t(i-1),y3(i-1))+  f(t(i-2),y3(i-2)));
end
disp('Iter       t0           AB           AM           CP')
disp('=======================================================')
for i=1:n+1
    fprintf('%3d     %f     %f     %f     %f\n',i,t(i),y1(i),y2(i),y3(i))
end
plot(t,y,t,y1,t,y2,t,y3)
legend('Exact','AB','AM','PC')
gtext('Values');

y