clc
clear all
n=input('Enter number');
k=factor(n);
k1=unique(k);
i1=0;
for i=k1
    i1=i1+1;
    k2=find(k==i);
    a(i1)=length(k2);
end
Number_of_Divisors=prod(a+1)
Sum_of_Divisors=prod((k1.^(a+1)-1)./(k1-1))
Euler_Function=n*prod(1-1./k1)


