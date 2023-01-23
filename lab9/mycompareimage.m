function [b] = mycompareimage(I,D)
DI = mydescriptor(I);
%Per comparar els histogrames el que farem serà restar-los
%llindar = (size(I)-(size(I)/2)+size(I/4));
SD = sum(D);
SI = sum(DI);
dist = sum(abs(DI-D));
p = dist/(SD+SI); 
llindar = 0.24;
b = p < llindar;
end
