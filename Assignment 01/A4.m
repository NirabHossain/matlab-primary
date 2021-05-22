clc
clear all
x=linspace(0,2*pi,40);
y=cos(2*x);
k=polyfit(x,y,4);
Y=poly2sym(double(k));
plot(x,y,'rd')
hold on
h=ezplot(Y);
set(h,'Color','green','LineStyle','--')
legend('Exact Value','Polynomial Value')
title('A graph of cos2x with exact value and interpolating polynomial of 4th order')
xlabel('X')
ylabel('Y')
axis([0 2*pi -1 1])
hold off



