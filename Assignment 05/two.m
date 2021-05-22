clc 
clear
n=input('For the number: ');
k=factor(n);
t=1;m=k(t);ic(t)=0;p(t)=k(t);
for i=1:length(k)
    if(m~=k(i))
        m=k(i);t=t+1;ic(t)=0;p(t)=m;
    end
    ic(t)=ic(t)+1;
end
ic=ic+1;
disp('Number of Divisors,');phi=prod(ic)
sigma=1;
for i=1:length(ic)
    sigma=sigma*(p(i)^(ic(i))-1)/(p(i)-1);
end
disp('Sum of Divisors,');sigma
Euler_function=n*prod(1-1./p)

