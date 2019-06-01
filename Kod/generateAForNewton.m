function A = generateAForNewton(X,Y)
%GENERATEAFORNEWTON Summary of this function goes here
%   Detailed explanation goes here
n = length(X);
newtonMatrix = zeros(n);

newtonMatrix(:, 1) = Y';
for j = 2:n
   for i = j:n 
       newtonMatrix(i, j) = (newtonMatrix(i, j-1) - newtonMatrix(i-1, j-1)) / (X(i) - X(i-j+1));
   end
end

A = diag(newtonMatrix)';
end

