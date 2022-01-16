function [R]=Construct_R(W,X)
[m,n]=size(X);
for i=1:m
    Row_i=X(i,:);
    a=Row_i-(Row_i*W);
    b=sum(a.^2);
    R(i,i)=1/max(2*b,0.001);
end