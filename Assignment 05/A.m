'01'


clc
n=1:50;
M=2.^n-1;
k=isprime(M);
for i=1:length(n)
    fprintf('%4i    %20i   %2i\n',n(i),M(i),k(i))
end
NumberOfPrime=sum(k)
NotPrime=length(n)-sum(k)



%%%%%%%%%%%%%%Output%%%%%%%%%%%%%%%