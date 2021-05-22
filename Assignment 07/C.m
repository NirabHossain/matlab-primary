'03'

clc
clear all
a=2;
syms x y
u=a*(x^2-y^2);v=-2*a*x*y;
if(diff(u,x)+diff(v,y)==0)
    disp('The motion is possible & chi exists');
else
    disp('The motion is impossible & Chi doesn"t exists');
end
if(diff(u,y)-diff(v,x)==0)
    disp('The motion is irrotational & phi exists');
else
    disp('The motion is rotational & phi doesn"t exists');
end
clc
Stream_function_chi=int(u,y);
g=-v-diff(Stream_function_chi,x);
Stream_function_chi=Stream_function_chi+int(g,x)

Velocity_potential_phi=int(u,x);
h=v-diff(Velocity_potential_phi,y);
Velocity_potential_phi=Velocity_potential_phi+int(h,y)

for i=1:40
ezplot(Stream_function_chi==i);
hold on
end
for i=1:40
q2=ezplot(Velocity_potential_phi==i);
set(q2,'color','r')
hold on
end
hold off
[x,y]=meshgrid(-6:6,-6:6);
streamslice(x,y,subs(u),subs(v))
gtext('Stream function')
gtext('Velocity potential')
gtext('Stream slice')


%%%%%%%%%%Output%%%%%%%%%%%
