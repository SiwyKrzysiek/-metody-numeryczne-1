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

%% Czebyszew interpolation with evenly spaced nodes
%% Interpolacja Lagrange'a z rozk³adem równomiernym 

display = 1111;

from = -1;
to = 1;

N = [5 9 11 15]
erros = zeros(1, display);

for n = N
    [nodes, values] = generateEvenlySpacedNodes(@f, n, from, to);
    interpolation = LagrangeInterpolation(nodes, values);
    x = linspace(-1, 1, display);
    y = zeros(1, display);
    for i = 1:display
        y(i) = polyval(interpolation, x(i));
        erros(i) = abs(f(i) - y(i));
    end
    
    maxError = max(erros)
    meanError = mean(erros)
    
    plot(x, y);
    hold on;
end

title("Interpolacja Lagrange'a");
grid minor;
legend("n=5", "n=9", "n=11", "n=15");


%% Interpolacja Lagrange'a z rozk³adem Czebyszewa 

display = 1111;

from = -1;
to = 1;

N = [5 9 11 15]

for n = N
    [nodes, values] = czebyszewNodes(@f, n);
    interpolation = LagrangeInterpolation(nodes, values);
    x = linspace(-1, 1, display);
    y = zeros(1, display);
    for i = 1:display
        y(i) = polyval(interpolation, x(i));
        erros(i) = abs(f(i) - y(i));
    end
    
    maxError = max(erros)
    meanError = mean(erros)
    
    plot(x, y);
    hold on;
end

title("Interpolacja Lagrange'a z wêz³ami czebyszewa");
grid minor;
legend("n=5", "n=9", "n=11", "n=15");

%% Interpolacja Newtona

display = 1111;

from = -1;
to = 1;

N = [5 9 11 15]

for n = N
    [nodes, values] = generateEvenlySpacedNodes(@f, n, from, to);
    A = generateAForNewton(nodes, values);
    poli = newtonPolinomialValue(A, x);
    x = linspace(-1, 1, display);
    y = zeros(1, display);
    for i = 1:display
        y(i) = polyval(poli, x(i));
    end
    
    plot(x, y);
    hold on;
end

title("Interpolacja Newtona");
grid minor;
legend("n=5", "n=9", "n=11", "n=15");

%% Interpolacja Newtona z wêz³ami Czebyszewa

display = 1111;

from = -1;
to = 1;

N = [5 9 11 15]

for n = N
    [nodes, values] = czebyszewNodes(@f, n);
    A = generateAForNewton(nodes, values);
    poli = newtonPolinomialValue(A, x);
    x = linspace(-1, 1, display);
    y = zeros(1, display);
    for i = 1:display
        y(i) = polyval(poli, x(i));
    end
    
    plot(x, y);
    hold on;
end

title("Interpolacja Newtona z wêz³ami Czebyszewa");
grid minor;
legend("n=5", "n=9", "n=11", "n=15");