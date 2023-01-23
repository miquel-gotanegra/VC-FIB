function [y] = kgris(x,K)
[f c] = size(x);
mean = sum(x)/f;
y = x(round(f/2)) < mean+K;
end