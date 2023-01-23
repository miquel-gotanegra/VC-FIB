function [y] = merit1(X)
%MERIT1 Summary of this function goes here
%   Detailed explanation goes here
[f c] = size(X);
y = (sum(sum(X))*100)/(f*c*255);
end

