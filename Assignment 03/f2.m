function v=f2(~,y)
    v(1)=y(2);
    v(2)=(100*(15-y(1))-y(1)*y(2)*y(2))/(1+(y(1))^2);
end