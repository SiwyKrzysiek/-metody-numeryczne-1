%% Zadanie z interpolacji trygonometrycznej z podr?cznika
clc;
clf;
clear;
close all;


t = [0 1 2 3]
f = [1 3 -2 -1]
x = transformuj(t)

% T = transformujOdwrotnie(x, 0, 3)

% punkty = linspace(0, 2*pi, 1000);
a = -1;
b = 4;
punkty = linspace(a, b, 1000);
%punkty = transformuj(punkty);
punkty = transformujPunkty(punkty, length(t));

y = interpolacjaTygonometryczna(x, f, punkty);

subplot(2, 1, 1);
title("Bez transformacji odworotnej");
hold on;
grid on;
plot(x, f, "o");

plot(punkty, y, "-");

subplot(2, 1, 2);
title("Po transformacji odwrotnej");
hold on;
grid on;
plot(transformujOdwrotnie(x, 0, 3), f, "o");

% plot(punkty, y, "-");
plot(transformujOdwrotnie(punkty, a, b), y, "-");



% e = linspace(-1, 4, 6)
% E = transformuj(e)
% F = transformujOdwrotnie(E, -1, 4)