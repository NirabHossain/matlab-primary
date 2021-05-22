clc
clear
format long
for n=1:50
    M(n)=2^n-1;
end
k=isprime(M);
disp('  N     Not Prime              Prime')
for i=1:50
    if(k(i)==0)
        fprintf('%3d      %d\n',i,M(i))
    else
        fprintf('%3d                              %d\n',i,M(i))
    end
end

