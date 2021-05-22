clc
clear all
load a.txt
load b.txt
a=[a,b];
[m,n]=size(a);
for j=1:m
    for i=2:m
        if a(j,j)==0
            t=a(j,:);a(j,:)=a(i,:);a(i,:)=t;
        end
    end
    a(j,:)=a(j,:)./a(j,j);
    for i=j+1:m
        a(i,:)=a(i,:)-a(j,:)*a(i,j);
    end
end
   for j=m:-1:1;
      for i=j-1:-1:1
          a(i,:)=a(i,:)-a(j,:).*a(i,j);
      end
   end
exact=a(:,n);



load a.txt
load b.txt

a=-a;
a=[a,b];
for i=1:m
    a(i,:)=a(i,:)./(-a(i,i));
    a(i,i)=0;
end

e=10;tol=.5*10^-7;k=1;x(1,1:m)=0;
while(e>tol)
    k=k+1;
    for i=1:m
        c=0;
        for j=1:m
            c=c+a(i,j)*x(k-1,j);
        end
        x(k,i)=c+a(i,n);
    end
    for i=1:m
        if(e>abs(x(k,i)-x(k-1,i)))
            e=abs(x(k,i)-x(k-1,i));
        end
    end
end
x1=x;
k1=k;
jac=x(k,:)';

clear x


e=10;k=1;x(1,1:m)=0;
while(e>tol)
    k=k+1;
    x(k,1:m)=0;
    for i=1:m
        c=0;
        for j=1:m
            if(x(k,j)==0)
                c=c+a(i,j)*x(k-1,j);
            else
                c=c+a(i,j)*x(k,j);
            end
        end
        x(k,i)=c+a(i,n);
    end
    for i=1:m
        if(e>abs(x(k,i)-x(k-1,i)))
            e=abs(x(k,i)-x(k-1,i));
        end
    end
end
x2=x;
gs=x(k,:)';
k2=k;

clear x

e=10;k=1;x(1,1:m)=0;w=1.1;
while(e>tol)
    k=k+1;
    x(k,1:m)=0;
    for i=1:m
        c=0;
        for j=1:m
            if(x(k,j)==0)
                c=c+a(i,j)*x(k-1,j);
            else
                c=c+a(i,j)*x(k,j);
            end
        end
        x(k,i)=w*(c+a(i,n))+(1-w)*x(k-1,i);
    end
    for i=1:m
        if(e>abs(x(k,i)-x(k-1,i)))
            e=abs(x(k,i)-x(k-1,i));
        end
    end
end
x3=x;
SR=x(k,:)';
k3=k;

solutions_for_Jacobi=x1
solutions_for_GS=x2
solutions_for_SOR=x3
disp('Final solution=')
Jacobi______GaussSeidel___SOR=[jac,gs,SR]
Number_of_Iterations=[k1,k2,k3]
plot(x1)
hold on
plot(x2)
hold on
plot(x3)
hold off



%%%%%%%%%%%Output%%%%%%%%%%%
