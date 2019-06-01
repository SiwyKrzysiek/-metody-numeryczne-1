function sum = newtonPolinomialValue(A, X)
%NEWTONPOLINOMIALVALUE Summary of this function goes here
%   Detailed explanation goes here
%result = A(1);
n = length(A);

%for i = 2:n
   %result = result + A(i) * prod(X - Nodes(1:(i-1)));
%end

sum = zeros(1, n);
sum(n) = A(1);
poli = 1;

for i = 2:n
   poli = conv(poli, [1, -X(i-1)]);
   sum = sum_poly_coeff(sum, A(i)*poli);
end

end

