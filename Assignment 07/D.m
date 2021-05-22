'04'

clc
clear all
syms x y
a=2;
phi=a*x^3/3-a*x*y^2-2
u=diff(phi,x);v=diff(phi,y);
u
v
chi=int(u,y);
g1=-v-diff(chi,x);
chi=chi+int(g1,x)

for i=1:40
    ezplot(phi==i,[0,6,0,6])
    hold on
end
for i=1:40
    h=ezplot(chi==i,[0,6,0,6]);
    set(h,'color','red')
    hold on
end
hold off
[x,y]=meshgrid(0:6,0:6);
streamslice(x,y,subs(u),subs(v))
gtext('Stream function')
gtext('Velocity potential')
gtext('Stream slice')


%%%%%%%%%%Output%%%%%%%%%%%


