function [ X,Y ] = generateData( N )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
X= -1 + (1+1)*rand(N,2);
r= -1 + (1+1)*rand(2,2);
x1=r(1,1);
y1=r(1,2);
x2=r(2,1);
y2=r(2,2);
m= (y2-y1)/(x2-x1);
c=y1-(m*x1);

Y = zeros(N,1);

for i=1:N
    x=X(i,1);
    y=X(i,2);
    ynew= m*x+c;

    if ynew>=y
        Y(i,1)=1;
    else
        Y(i,1)=-1;
    end
end

end

