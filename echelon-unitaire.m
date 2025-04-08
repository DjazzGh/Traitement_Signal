% Script : echelon.m
% But : tracer le signal échelon unitaire u(t)

t = -10:1/1000:10;        % Temps de -10 à 10 avec un pas de 0.001
u = zeros(size(t));       % Initialisation de u(t) à zéro
u(find(t >= 0)) = 1;      % u(t) = 1 pour t >= 0

figure(3);                % Figure numéro 3
plot(t, u, 'LineWidth', 2); % Tracé avec une ligne épaisse
grid on;                  % Grille
xlabel('temps en (s)');
ylabel('amplitude en (v)');
title('signal échelon unitaire u(t)');
