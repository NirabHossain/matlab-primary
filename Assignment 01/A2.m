clc
clear all
x=input('Enter the number less than 50');
i=0;
while(x>1)
    if(rem(x,2)==0)
        x=x/2;
    else
        x=3*x+1;
    end
%    disp(x)
    i=i+1 ;
    X(i)=x;
end
%plot(X)
for n=1:40
    x=n;j=0;
    while(x>1)
        if(rem(x,2)==0)
            x=x/2;
        else
            x=3*x+1;
        end
        j=j+1;
    end
    disp(j);
   Y(n)=j;
end
plot(Y)
    
    

