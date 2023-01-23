function [r] = merit2(q)
p = cast(q,'double');
[f c] = size(p);
const = mod(f,2);
x = [linspace(0,100,(f/2)+const) flip(linspace(0,100,f/2))];
const = mod(c,2);
y = [linspace(0,100,(c/2)+const) flip(linspace(0,100,c/2))];
mat = (x' * y);
r = sum(sum(p .* mat));
end

