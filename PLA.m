function [ w, iters ] = pla( X,Y,w0 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[row , ~]=size(X);
X(:, 3)=ones(row,1);
j=0;
iters=0;
flag=true;

while flag==true 
    Random= randperm(row);
    for i=1:row% for eg. 1 to 100 
        %X(i,:)
        
        %Y(i,1)
        wx=w0.*X(Random(i),:);
        magnitude=sum(wx);
        s=sign(magnitude);
        
        if s~=Y(Random(i),1)
            for m=1:3
                w0(m)=w0(m)+Y(Random(i),1)*X(Random(i),m);   
            end 
            break;
        end
        j=i;
        
    end
    if j==row
        flag=false;
    end
    iters= iters+1;
end
w=w0;
end

