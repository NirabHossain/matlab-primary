'05'

clc
clear all
z1=5;a=.8;cc=.61;g=9.81;z2=a*cc;h=.25;
if(.1<(a/z1) && (a/z1)<.2)
    a=z2*sqrt((2*g*(z1-z2))/(1-(z2/z1)^2))
else
    a='Not possible'
end
z1=z1:h:15;
ans_1=z2*sqrt((2*g*(z1-z2))./(1-(z2./z1).^2));
b_____z1_______QbyB=[z1', ans_1']
plot(z1,ans_1,'g-.d')
title('Sluice gate problem')



%%%%%%%%%%Output%%%%%%%%%%%
