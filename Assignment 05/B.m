'02'

clc
clear all
n=10;
f=factor(n)

k=1;p(1)=f(1);a(1)=0;
for i=1:length(f)
    if(p(k)~=f(i))
        k=k+1;
        p(k)=f(i);
        a(k)=0;
    end
    a(k)=a(k)+1;
end

number_of_divisors=prod(a+1)
sum_of_divisors=prod((p.^(a+1)-1)./(p-1))
euler_function=n*prod(1-1./p)



%%%%%%%%%%%%%%%Output%%%%%%%%%%%%%%%