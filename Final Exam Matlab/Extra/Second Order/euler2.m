function [t,y]=euler2(y0,a,b,h)
    y(:,1)=y0;t(1)=a;n=(b-a)/h;
    for i=1:n
        y(:,i+1)=y(:,i)+h*f(t(i),y(:,i));
        t(i+1)=t(i)+h;
    end
end