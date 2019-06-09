function x = transformuj(t)
%TRANSFORMUJ Transformuje wejsciowe wartosci na wartosci z przedzialu
%<0, 2*pi)

%delta = t(2) - t(1);
%dlugosc = t(end) - t(1) + delta;

%n = length(t);
%x = t ./ dlugosc .* (2*pi); 


n = length(t);
k = 0:1:n-1;

x = k .* (2*pi);
x = x ./ n;

end

