clc
clear
load A.txt 
load b.txt
a=[A b];
[m n]=size(a);
for j=1:m                                 %Gaussian elimination
    for i=j+1:m
        if(a(j,j)==0)
            t=a(j,:);a(j,:)=a(i,:);a(i,:)=t;
        end
    end
    a(j,:)=a(j,:)./a(j,j);
    for i=j+1:m
        a(i,:)=a(i,:)-a(i,j)*a(j,:);
    end
end
for j=m:-1:1
    for i=j-1:-1:1
        a(i,:)=a(i,:)-a(i,j)*a(j,:);
    end
end
ex=a(:,n);



a=[-A,b];                         %Formation of Numerical SLEs
for j=1:m
    a(j,:)=a(j,:)./(-a(j,j));
    a(j,j)=0;
end                              %Formation of Numerical SLEs

x(1,:)= [0 0 0 0];
x1(1)=1;k=1;tol=.5*10^-7;

while(abs(x1(k))>tol)            %Jacobi
    for i=1:m
        s=0;
        for j=1:m
            s=s+x(k,j)*a(i,j); 
        end
        x(k+1,i)=s+a(i,n);
        p(i)=abs(x(k+1,i)-x(k,i));
    end
    x1(k+1)=max(p);
    k=k+1;
end
k1=1:k;
Res1=[k1' x x1'];
jac=x(k,:);


                                 %Gauss Seidel
g(1,:)=[0 0 0 0];
xg(1)=1;k=1;
while(xg(k)>tol)
    g(k+1,1:m)=0;
    for i=1:m
        s=0;
        for j=1:m
            if(g(k+1,j)==0)
                s=s+g(k,j)*a(i,j);
            else
                s=s+g(k+1,j)*a(i,j);
            end
        end
        g(k+1,i)=s+a(i,n);
        p(i)=abs(g(k+1,1)-g(k,1));
        
    end
    xg(k+1)=max(p);
    k=k+1;
end
k2=1:k;
Res2=[k2' g xg'];
gs=g(k,:);
%%%%%%%%%%%%%%%%%%%%%%%%%%SOR%%%%%%%%%%%%%%%%%
clear x x1
x(1,:)=[0 0 0 0];
x1(1)=1;k=1;w=1.1;
while(x1(k)>tol)
    x(k+1,:)=0;
    for i=1:m
        s=0;
        for j=1:m
            if(x(k+1,j)==0)
                s=s+x(k,j)*a(i,j);
            else
                s=s+x(k+1,j)*a(i,j);
            end
        end
        x(k+1,i)=w*(s+a(i,n))+(1-w)*x(k,i);
        p(i)=abs(x(k+1,i)-x(k,i));
    end
    x1(k+1)=max(p);
    k=k+1;
end
k3=1:k;
Res3=[k3' x x1'];
sor=x(k,:);
disp('Iteration        x1        x2       x3         x4    Abs_Error')
JacobiTable=Res1
GS____Table=Res2
SOR___Table=Res3
Val=1:4;
Table_________X______________Jacobi________________GS________________SOR_____Exact=[Val' jac' gs' sor' ex]
