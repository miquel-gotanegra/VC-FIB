function [S] = myDescriptor3(I)

%% tractem la dividida en 3 blocs 
%%
%%    x 
%%    x 
%%    x 
I = imresize(I,[48 32]);
[f c] = size(I);
stepy = f/3;
S = [];

    for j=1:3
        
        X = I( ((j-1)*stepy)+1:(j*stepy),:);
        mitj = mean(X(:));
        %Varicancia de la imatge
        V = double(X);
        vari = mean(var(V));
        
        %desviacio standard
        std_dev = mean(std(V));
       
        
        %%Value and direction of the gradient
        [Gmag, Gdir] = imgradient(I,'prewitt');
        sumGradMag = sum(sum(Gmag)); 
        
       
        S = [S,mitj, vari,std_dev,sumGradMag];
   
    end

end