function [t,y]=euler2(y0,z0,a,b,h)
    t(1)=a;n=(b-a)/h;y(1,1)=y0;y(1,2)=z0;
    for i=1:n
        t(i+1,:)=t(i)+h;
        y(i+1,:)=y(i,:)+h*f2(t(i),y(i,:));
    end    
end
