clc
clear all
j=1:20;
x(1)=fbg1(1);y(1)=fbg2(1);z(1)=fbg3(1);
for i=1:19
    x(i+1)=fbg1(x(i));
    y(i+1)=fbg2(y(i));
    z(i+1)=fbg3(z(i));
end
plot(j,x,j,y,j,z)
legend('g1','g2','g3')
%gtext({'1st';'2nd';'3rd'})

