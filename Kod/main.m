%% Lagrange interpolation with evenly spaced nodes
clc;
clf;
clear;

N = [5 9 11 15];
from = -1;
to = 1;
x = linspace(from, to, 1111);
analiticResults = arrayfun(@f, x);


hold on;
for n = N
    nodes = generateEvenlySpacedNodes(@f, n, from, to);
    y = LagrangeInterpolation(x, nodes);
    
    plot(x, y, 'DisplayName', n + " wezlow interoplacji")
    
    absoluteErrors = abs(y - analiticResults);
    n
    maxError = max(absoluteErrors)
    meanError = mean(absoluteErrors)
end

grid on;
title("Interpolacja metoda Lagrangea z rownoodleglymi wezlami");
xlabel("x");
ylabel("f(x)");
legend();

%% Newton interpolation with evenly spaced nodes
clc;
clf;
clear;

N = [5 9 11 15];
from = -1;
to = 1;
x = linspace(from, to, 1111);
analiticResults = arrayfun(@f, x);


hold on;
for n = N
    nodes = generateEvenlySpacedNodes(@f, n, from, to);
    y = NewtonInterpolation(x, nodes);
    
    plot(x, y, 'DisplayName', n + " wezlow interoplacji")
    
    absoluteErrors = abs(y - analiticResults);
    n
    maxError = max(absoluteErrors)
    meanError = mean(absoluteErrors)
end

grid on;
title("Interpolacja metoda Newtona z rownoodleglymi wezlami");
xlabel("x");
ylabel("f(x)");
legend();

%% Lagrange interpolation with evenly spaced nodes
clc;
clf;
clear;

N = [5 9 11 15];
from = -1;
to = 1;
x = linspace(from, to, 1111);
analiticResults = arrayfun(@f, x);


hold on;
for n = N
    nodes = generateCzebyszewNodes(@f, n);
    y = LagrangeInterpolation(x, nodes);
    
    plot(x, y, 'DisplayName', n + " wezlow interoplacji")
    
    absoluteErrors = abs(y - analiticResults);
    n
    maxError = max(absoluteErrors)
    meanError = mean(absoluteErrors)
end

grid on;
title("Interpolacja metoda Lagrangea z wezlami Czebyszewa");
xlabel("x");
ylabel("f(x)");
legend();

%% Newton interpolation with Czebyszew nodes
clc;
clf;
clear;

N = [5 9 11 15];
from = -1;
to = 1;
x = linspace(from, to, 1111);
analiticResults = arrayfun(@f, x);


hold on;
for n = N
    nodes = generateCzebyszewNodes(@f, n);
    y = NewtonInterpolation(x, nodes);
    
    plot(x, y, 'DisplayName', n + " wezlow interoplacji")
    
    absoluteErrors = abs(y - analiticResults);
    n
    maxError = max(absoluteErrors)
    meanError = mean(absoluteErrors)
end

grid on;
title("Interpolacja metoda Newtona z wezlami Czebyszewa");
xlabel("x");
ylabel("f(x)");
legend();

