clc
clear all
syms x y z t
e1=       y+   z+   t== 1;
e2=  x+ 3*y+ 2*z+ 4*t==-1;
e3=  x+      6*z+10*t== 2;
e4=  x+ 4*y+10*z+20*t== 3;
[A,B]=equationsToMatrix([e1,e2,e3,e4],[x,y,z,t])
X=linsolve(A,B)
A*X-B

[c1 c2 c3 c4]=solve(e1,e2,e3,e4,x,y,z,t);
c=[c1 c2 c3 c4];
c'
