function [D] = mydescriptor(I)
I = imresize(I,[64 64]);
% D = imhist(I);
%Divideixo en files i columnes i selecciono la primera columna
% subplot(1,2,1); imshow(I);
% subplot(1,2,2); plot(D);
% drawnow;
 
%Descriptor d'orientació:
%D = extractHOGFeatures(I,'CellSize',[8 8]);
%EL DEFECTE QUE TE AQUEST HISTOGRAMA D'ORIENTACIO ES QUE NOMES ENS
%SELECCIONARA LES OVELLES QUE TENEN LA MATEIXA ORIENTACIÓ.
%subplot(1,2,1); imshow(I);
%subplot(1,2,2); plot(V);
 
%Un altre descriptor
%Aquest és independent de la orientació, per la qual cosa ens resulta molt
%més senzill
D = extractLBPFeatures(I,'CellSize',[16 16]);
end
