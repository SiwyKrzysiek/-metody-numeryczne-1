function t = transformujOdwrotnie(x)
%TRANSFORMUJODWROTNIE Odwraca dzialanie funkcji transformuj

n = length(x);

t = x ./ (2*pi) .* n;
end

