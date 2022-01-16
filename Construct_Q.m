function [Q]=Construct_Q(W)
[m,n]=size(W);
for i=1:n
    Row_i=W(i,:);
    a=sum(Row_i.^2);
    Q(i,i)=1/max(2*a,0.001);

end

