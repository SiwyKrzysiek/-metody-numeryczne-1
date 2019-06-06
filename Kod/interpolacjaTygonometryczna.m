function y = interpolacjaTygonometryczna(x, f, punkty)
%INTERPOLACJATYGONOMETRYCZNA Summary of this function goes here
%   Detailed explanation goes here

n = length(x);
m = floor(n / 2);

A = zeros(1, m + 1);
B = zeros(1, m + 1);

for k = 0:m
   index = k + 1;
   for i = 0:n-1
      A(index) = A(index) + f(i+1) * cos(k * x(i+1)); 
      B(index) = B(index) + f(i+1) * sin(k * x(i+1));
   end
   
end
A = A .* 2 ./ n;
B = B .* 2 ./ n;

y = ones(1, length(punkty)) .* A(1) ./ 2;
for i = 1:length(punkty)
    p = punkty(i);
    if (mod(n,2) == 1)
        for k = 1:m
            y(i) = y(i) + A(k+1)*cos(k * p) + B(k+1)*sin(k * p);
        end
    else
        for k = 1:m-1
            y(i) = y(i) + A(k+1)*cos(k * p) + B(k+1)*sin(k * p);
        end
        y(i) = y(i) + A(m+1) / 2 * cos(m * p);
    end
end

end

