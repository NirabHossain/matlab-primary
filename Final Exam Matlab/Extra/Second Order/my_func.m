function out = my_func(t,x)
     out = [x(2); 6*sin(t) - 0.1*x(2) - x(1).^5];
end