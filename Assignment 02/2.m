clc
clear all
tol=0.00001;
x1(1)=1;
x2(1)=1;
x3(1)=1;
i=1;k1(1)=i;

while((abs(x1(i)-g1(x1(i))))>tol)
    fprintf('%3d    %10.6f       %10.6f     \n',i,x1(i),g1(x1(i)))
    x1(i+1)=g1(x1(i));
    i=i+1;k1(i)=i;
end
i=1;k2(1)=1;
while((abs(x2(i)-g2(x2(i))))>tol && i<25)
    fprintf('%3d    %10.6f       %10.6f     \n',i,x2(i),g2(x2(i)))
    x2(i+1)=g2(x2(i));
    i=i+1;k2(i)=i;
end
i=1;k3(i)=1;
while((abs(x3(i)-g1(x3(i))))>tol)
    fprintf('%3d    %10.6f       %10.6f     \n',i,x3(i),g3(x3(i)))
    x3(i+1)=g3(x3(i));
    i=i+1;k3(i)=i;
end
plot(k1,x1,k2,x2,k3,x3)
legend('g1','g2','g3')

