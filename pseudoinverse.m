function [ w ] = pseudoinverse( X,Y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[row , ~]=size(X);
X(:, 3)=ones(row,1);
XTranspose = transpose(X);
XTransposeX= (XTranspose*X);
Xpseudoinv=XTransposeX\XTranspose;

winit=Xpseudoinv*Y;
w= transpose(winit);
end
