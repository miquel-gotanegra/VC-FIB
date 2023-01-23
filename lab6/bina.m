function [y] = bina(x,k)
%   Detailed explanation goes here
[f c] = size(x);
fc = round(f/2);
cc = round(c/2);
y = x(fc,cc) > k;

m = mean(x,'all');
PB = x(fc,cc) > m+k;
PF = x(fc,cc) < m-k;

y=int8(PB) - int8(PF);

end

