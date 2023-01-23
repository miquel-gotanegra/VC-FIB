function [y] = filtrado(x)
m=mean(x,'all');
if x(2,2) < m+8
    y =m;
else
    y = x(2,2);
end

