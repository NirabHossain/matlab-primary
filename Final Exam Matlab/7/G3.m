clc
clear all
syms x y
a=2;
u=a*(x^2-y^2);         v=-2*a*x*y;
if(diff(u,x)+diff(v,y)==0)
    disp('Stream function exists')
else
    disp('Stream function doesn''t exist')
end
if(-diff(v,x)+diff(u,y)==0)
    disp('Velocity potential exists')
else
    disp('Velocity potential doesn''t exist')
end
chi=int(u,y);
chi=chi+int(-v-diff(chi,x),x)
phi=int(u,x);
phi=phi+int(v-diff(phi,y),y)
[x,y]=meshgrid(-6:6,-6:6);
streamslice(x,y,subs(u),subs(v));
hold on
for i=1:40
      ezplot(phi==i);
    hold on
    w=ezplot(chi==i);
    set(w,'color','r')
    hold on
end
gtext({'Str';'Pot';'L'})
hold off
