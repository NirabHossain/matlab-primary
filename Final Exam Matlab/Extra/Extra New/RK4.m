function [t,y]=RK4(y0,a,h)
    y(:,1)=y0;t(1)=a(1);n=(a(2)-a(1))/h;
    for i=1:n
        k1=h*f(t(i),y(:,i));
        k2=h*f(t(i)+h,y(:,i)+k1);
        y(:,i+1)=y(:,i)+(k1+k2)/2;
        t(i+1)=t(i)+h;
    end
end



