function interpolatingPolinomial = LagrangeInterpolation(X ,Y)
%LAGRANGEINTERPOLATION Summary of this function goes here
%   Detailed explanation goes here
sum = zeros(1, length(X));

for i = 1:length(X)
   sum = sum +  LagrangeaPolinomial(i, X) * Y(i);
end

interpolatingPolinomial = sum;

end

