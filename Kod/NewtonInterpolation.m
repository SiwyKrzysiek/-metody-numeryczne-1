function y = NewtonInterpolation(x, interpolationNodes)
%NEWTONINTERPOLATION Generate points values using Newton interpolation
X = interpolationNodes(1, :);
Y = interpolationNodes(2, :);

numberOfNodes = size(interpolationNodes, 2);
newtonMatrix = zeros(numberOfNodes, numberOfNodes);

newtonMatrix(:, 1) = Y';
for j = 2:numberOfNodes
   for i = j:numberOfNodes
       newtonMatrix(i, j) = (newtonMatrix(i, j-1) - newtonMatrix(i-1, j-1)) / (X(i) - X(i-j+1));
   end
end

a = diag(newtonMatrix)';

p = a(numberOfNodes);
for i=numberOfNodes-1:-1:1
    p = [p a(i)] - [0 p*X(i)];
end
y = polyval(p,x);
end