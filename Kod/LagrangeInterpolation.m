function y = LagrangeInterpolation(x, interpolationNodes)
%LAGRANGEINTERPOLATION Generate points values using Lagrangea Interpolation

numberOfNodes = size(interpolationNodes, 2);
L = ones(numberOfNodes, length(x));

for i = 1:numberOfNodes
   for j = 1:numberOfNodes
       if (i ~= j)
          L(i, :) = L(i, :).*((x - interpolationNodes(1, j)) / (interpolationNodes(1, i) - interpolationNodes(1, j)));
       end
   end
end

y = zeros(1, length(x));
for i = 1:numberOfNodes
   y = y + interpolationNodes(2, i) * L(i, :);
end

end

