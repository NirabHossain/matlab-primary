clc
clear all
load A.txt
load b.txt
%%%%%%%%%%%%%%%%Elimination%%%%%%%%%%%%%%%%%%%%%%%%%

a=[A b];
a
[m n]=size(a);

for j=1:m
        for i=j+1:m
            if(a(j,j)==0)
                t=a(j,:);a(j,:)=a(i,:);a(i,:)=t;
            end
        end
        a(j,:)=a(j,:)./a(j,j);
        for i=j+1:m
            a(i,:)=a(i,:)-a(j,:)*a(i,j);
        end
end
a
for j=m:-1:1
        for i=j-1:-1:1
            a(i,:)=a(i,:)-a(j,:)*a(i,j);
        end
end
res1=a(:,n)

%%%%%%%%%%%%%%%%%%%%%%Jacobi%%%%%%%%%%%%%%%%%%%%
a=[-A,b];
for j=1:m
    a(j,:)=a(j,:)/(-a(j,j));
    a(j,j)=0;
end%Formation
e=1;tol=10^-7;

x(1,:)=[0 0 0 0];
k=1;
while(e>tol)
    for i=1:m
        s=0;
        for j=1:m
            s=s+a(i,j)*x(k,j);
        end
        x(k+1,i)=s+a(i,n);
    end
    e=abs(x(k+1,:)-x(k,:));
    k=k+1;
end
k1=1:k;
res2=[k1' x]

clear x
x(1,:)=[0 0 0 0];
k=1;e=1;
while(e>tol)
    x(k+1,:)=0;
    for i=1:m
        s=0;
        for j=1:m
            if(x(k+1,j)==0)
                s=s+a(i,j)*x(k,j);
            else
                s=s+a(i,j)*x(k+1,j);
            end
        end
        x(k+1,i)=s+a(i,n);
    end
    e=abs(x(k+1,:)-x(k,:));
    k=k+1;
end
k1=1:k;
res3=[k1' x]


clear x
x(1,:)=[0 0 0 0];
k=1;e=1;w=1.1%%%%New
while(e>tol)
    x(k+1,:)=0;
    for i=1:m
        s=0;
        for j=1:m
            if(x(k+1,j)==0)
                s=s+a(i,j)*x(k,j);
            else
                s=s+a(i,j)*x(k+1,j);
            end
        end
        x(k+1,i)=w*(s+a(i,n))+(1-w)*x(k,i);
    end
    e=abs(x(k+1,:)-x(k,:));
    k=k+1;
end
k1=1:k;
res4=[k1' x]


