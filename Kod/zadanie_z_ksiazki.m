%% Zadanie z interpolacji trygonometrycznej z podr?cznika
clc;
clf;
clear;
close all;


t = [0 1 2 3]
f = [1 3 -2 -1]
x = transformuj(t)

a = -1;
b = 4;
punkty = linspace(a, b, 1000);
punkty = transformujPunkty(punkty, length(t));

y = interpolacjaTygonometryczna(x, f, punkty);

title("Wykres interpolacji danych z ksi??ki po transformacji odwrotnej");
xlabel("t")'
ylabel("f(t)");
grid on;
hold on;
plot(transformujOdwrotnie(x, 0, 3), f, "o", 'DisplayName','W?z?y interpolacji');

plot(transformujOdwrotnie(punkty, a, b), y, "-", 'DisplayName','Funkcja interpoluj?ca f');
