function t = transformujOdwrotnie(x, a, b)
%TRANSFORMUJODWROTNIE Odwraca dzialanie funkcji transformuj

dlugosc = b - a;
delta = dlugosc / (length(x) - 1);

t = a:delta:b;

% delta = t(2) - t(1)
% dlugosc = t(end) - t(1) + delta
% 
% n = length(t);
% x = t ./ dlugosc .* (2*pi); 
% 
% n = length(t);
% 
% t = x ./ (2*pi) .* n;
end

