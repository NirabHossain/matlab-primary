clc
clear
cc=.61;a=.8;z1=5:.25:15;z2=a*cc;g=9.81;
i=0;
for k=z1    
    if(a/k<.2 && a/k>.1)
        i=i+1;
        QbyB(i)=z2*sqrt(2*g*(k-z2)/(1-z2^2./k^2));
        z(i)=k;
    end
end
Table__z1______QbyB=[z' QbyB']
plot(z,QbyB,'k-.d')

