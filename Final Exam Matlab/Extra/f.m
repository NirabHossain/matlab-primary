%y''-2y' + 2y = e2t sin t,0 ? t ? 1, 
% with y(0) = ?0.4, y(0) = ?0.6
function yp=f(t,y)
    yp=[y(2); 2*exp(-t/2)*sin(t)-y(1)+y(3)-y(2)/2; 2*(y(1)-y(3))-2/3*y(3)];
end
