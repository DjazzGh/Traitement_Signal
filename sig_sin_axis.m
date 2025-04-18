fe = 1000;           % Fréquence d'échantillonnage (Hz)
f0 = 100;            % Fréquence du signal (Hz)
t = -0.01:1/fe:0.01; % Domaine temporel pour 2 périodes (2 x 1/100 = 0.02 s)
x = sin(2*pi*f0*t);  % Signal sinusoïdal

figure(7);
plot(t, x, 'b', 'LineWidth', 2); % Tracé du signal
grid on;
xlabel('temps en (s)');
ylabel('amplitude en (V)');
title('Signal sinusoïdal sur deux périodes');

% Limiter l'affichage à deux périodes
axis([-0.01 0.01 -1.2 1.2]);
