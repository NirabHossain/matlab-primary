clc
clear
syms x y
y=((x+1)^2-2*x^2)/((x-1)^3-x+1)
[Numerator Denominator]=numden(y)
Expanded_Form=expand(y)
Factorisation_form=factor(y)
Simplifiaction_Form=simple(y)
k=solve(y==0,x);
Solved_Roots=double(k)

