function [Score] = RSR(W_initial, X, p, landa, N, Epsilon)
% X represent the feature matrix that $x_ij$ represents j-th feature of i-th sample. 
%landa >0
% 0<p<1
% N>0
W=W_initial;
[m,n]=size(X);
I=eye(n);
J=eye(m);
Ep(1:m)=Epsilon;
Ep=Ep';
for i=1:N
    GW=Construct_GW(p,W);
    GB=Construct_GB(X,W,Ep,J);
       a=(GW)^-1*transpose(X)*GB*X;
       W=((a)^-1+landa*I)*(a);
end
W=W';
W=W.^2;
Score=sum(W);


