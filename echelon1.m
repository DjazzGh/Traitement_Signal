% echelon1.m
% Script pour tracer le signal y(t) = u(t - 1)

t = -10:1/1000:10;         % Vecteur temps
y = zeros(size(t));        % Initialisation du signal
y(t >= 1) = 1;             % y(t) = 1 pour t >= 1

figure(4);
plot(t, y, 'LineWidth', 2);
grid on;
xlabel('temps en (s)');
ylabel('amplitude en (V)');
title('Signal y(t) = u(t - 1)');
