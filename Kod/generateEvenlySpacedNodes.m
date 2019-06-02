function nodes = generateEvenlySpacedNodes(f, numberOfPoints, from, to)
%GENERUJROWNOODDZIELONEWEZLY Generate equaly spaced interpolation nodes
nodes = zeros(2, numberOfPoints);

x = linspace(from, to, numberOfPoints);
y = zeros(1, numberOfPoints);

for i = 1:numberOfPoints
    y(1, i) = f(x(1, i));
end

nodes(1, :) = x;
nodes(2, :) = y;
end

