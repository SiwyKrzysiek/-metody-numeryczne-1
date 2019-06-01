function [x, y] = generateEvenlySpacedNodes(f, numberOfPoints, from, to)
%GENERUJROWNOODDZIELONEWEZLY Summary of this function goes here
%   Detailed explanation goes here
x = linspace(from, to, numberOfPoints);
y = zeros(1, numberOfPoints);

for i = 1:numberOfPoints
    y(1, i) = f(x(1, i));
end
end

