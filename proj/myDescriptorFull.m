function [S] = myDescriptorFull(I)
I = imresize(I,[48 32]);
%% tractem la imatge sencera
%Possibles característiques que podem tenir en compte per tal d'obtenir els
%resultats que volem:
%Mitjana de nivells de grisos
mitj = mean(I(:));
%Varicancia de la imatge
V = double(I);
vari = mean(var(V));
%desviacio standard
std_dev = mean(std(V));

%%Value and direction of the gradient
[Gmag, Gdir] = imgradient(I,'prewitt');
sumGradMag = sum(sum(Gmag)); 

S = [mitj, vari,std_dev,sumGradMag];
end