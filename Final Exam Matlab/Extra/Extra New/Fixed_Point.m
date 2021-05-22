clc
clear all
x(1)=1;
for i=1:20
    x(i+1)=f(x(i));
    plot(x)
end

