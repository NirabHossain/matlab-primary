'03'


clc
n=5;
disp(' Team      Vs     Team')
if(mod(n,2)==0)
    for k=0:n-1
        for i=1:n
            for j=i+1:n
                if(mod(i+j,n-1)==k)
                    fprintf('%3i      %3i      %3i\n',k+1,i,j)
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
                    fprintf('%3i      %3i      %3i\n',k+1,i,j)
                end
            end
        end
    end
end
   

%%%%%%%%%%%%%Output%%%%%%%%%%%%%

