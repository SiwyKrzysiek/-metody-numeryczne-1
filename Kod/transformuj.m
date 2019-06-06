function x = transformuj(t)
%TRANSFORMUJ Transformuje wejsciowe wartosci na wartosci z przedzialu
%<0, 2*pi)

n = length(t);
x = t ./ n .* (2*pi); 

end

