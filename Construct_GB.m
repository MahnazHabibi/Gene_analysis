function GB=Construct_GB(X,W,Ep,J)
%[m,n]=size(X);
% m=the number of samples
A=sum(((X-X*W).^2)');
B(1,:)=2*A;
B(2,:)=Ep;
AA=max(B);
C=1./AA;
GB=C.*J;
%for i=1:m
%    f=max(Epsilon,2*AA(i));
%    GB(i,i)=1/f;
%end

