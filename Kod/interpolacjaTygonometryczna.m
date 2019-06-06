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
A = A .* 2 ./ n
B = B .* 2 ./ n


y = -1;
end

