function [GW]=Construct_GW(p,W)
[n,m]=size(W);
%m , n =the number of features
for i=1:n
    Row_j=W(i,:);
    H=Row_j.^2;
    b=sum(H);
   GW(i,i)=(p/2)*(b^(p-2));
end

