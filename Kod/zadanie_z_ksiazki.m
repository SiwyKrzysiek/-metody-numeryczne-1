%% Zadanie z interpolacji trygonometrycznej z podr?cznika
clc;
clf;
clear;
close all;


t = [0 1 2 3]
f = [1 3 -2 -1]
x = transformuj(t)

%T = transformujOdwrotnie(x)

punkty = linspace(0, 2*pi, 1000);

y = interpolacjaTygonometryczna(x, f, punkty);