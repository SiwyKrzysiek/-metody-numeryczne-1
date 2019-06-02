function nodes = czebyszewNodes(f, numberOfPoints)
%CZEBYSZEWNODES Generate Czebyszew interpolation nodes in range <-1, 1>
nodes = zeros(2, numberOfPoints);

x = zeros(1, numberOfPoints);
for k = 1:numberOfPoints
   x(k) = cos(pi * (2*k -1) / (2*numberOfPoints));
end

y = zeros(1, numberOfPoints);
for i = 1:numberOfPoints
   y(i) = f(x(i));
end

nodes(1, :) = x;
nodes(2, :) = y;
end

