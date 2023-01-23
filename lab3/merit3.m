function [y] = merit3(x)
[f c] = size(x);
f4 = ceil(f/8);
c4 = ceil(c/8);
Mitj = x(3*f4:5*f4,3*c4:5*c4);
y = sum(sum(Mitj));
end

