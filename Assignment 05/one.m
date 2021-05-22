clc
clear all
format long
l=50;
for n=1:l
    M(n)=2^n-1;
end
k=isprime(M);

%Now Printing
disp('Index    Prime         NotPrime')
for i=1:l
    fprintf(' %2d      ',i)    
    if(k(i)==1)
        fprintf('%d ',M(i))
    else
        fprintf('                %d ',M(i))
    end
    disp(' ')
end

