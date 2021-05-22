clc
clear all
n=input('Enter team number');
disp('Round        Team   vs     Team')
if(mod(n,2)==0)
    for k=0:n-1
        for i=1:n
            for j=i+1:n
                if(mod(i+j,n-1)==k)
                    fprintf('%4d          %d              %d\n',k+1,i,j)
                end
            end
        end
    end
else
    n=n+1;
    for k=0:n-1
        for i=1:n-1
            for j=i+1:n-1
                if(mod(i+j,n-1)==k)
                    fprintf('%4d          %d              %d \n',k+1,i,j)
                end
            end
        end
    end    
end


