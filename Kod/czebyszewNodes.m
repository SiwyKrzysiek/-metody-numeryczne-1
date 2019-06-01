function [x,y] = czebyszewNodes(f, numberOfPoints)
%CZEBYSZEWNODES Summary of this function goes here
%   Detailed explanation goes here

x = zeros(1, numberOfPoints);
for k = 1:numberOfPoints
   x(k) = cos(pi * (2*k -1) / (2*numberOfPoints));
end

y = zeros(1, numberOfPoints);
for i = 1:numberOfPoints
   y(i) = f(x(i));
end

end

