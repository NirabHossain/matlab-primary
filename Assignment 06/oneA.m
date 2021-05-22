clear x
load a.txt
load b.txt
a=[a,b];
[m,n]=size(a);
a(1:m,1:m)=-a(1:m,1:m);
for i=1:m
    a(i,:)=a(i,:)./(-a(i,i));
    a(i,i)=0;
end
a
x(1,1:m)=0;k=1;tol=10^-5;e=10;w=1.1;

while(e>tol)
    k=k+1;
    x(k,1:m)=0;
    for i=1:m
        c=0;
        for j=1:m
            if(x(k,j)==0)
                c=c+x(k-1,j)*a(i,j);
            else
                c=c+x(k,j)*a(i,j);
            end
        end
        x(k,i)=(a(i,n)+c)*w+(1-w)*x(k-1,i);
    end
    if(e>abs(x(k,i)-x(k-1,i)))
        e=abs(x(k,i)-x(k-1,i));
    end
end
disp('Jacobi')
disp('Iter      x1        x2          x3        x4')
for i=1:k
    fprintf('%3d',i)
    for j=1:m
        fprintf('  %9.6f',x(i,j))
    end
    fprintf('\n')
end
    k3=k;
    
    
    
    



