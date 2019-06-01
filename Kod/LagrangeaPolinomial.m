function polinomial = LagrangeaPolinomial(i ,X)
%WIELOMIANLAGRANGEA Summary of this function goes here
%   Detailed explanation goes here
n = length(X);

numerator = 1;
denumerator = 1;

for j = 1:n
    if(i ~= j)
        numerator = conv(numerator, [1, -X(j)]);
        denumerator = denumerator * (X(i) - X(j));
    end
end
polinomial = numerator / denumerator;

end

