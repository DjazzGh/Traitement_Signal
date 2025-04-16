
f = 1; % Fréquence du signal (en Hz)
T = 1/f; % Période du signal
t = 0:0.01:2*T; % Vecteur temps pour deux périodes (pas de 0.01s)

% Génération du signal carré
signal = square(2*pi*f*t); % Signal carré avec la fonction square

% Visualisation
figure(7); % Ouvre la figure 7
plot(t, signal, 'b', 'LineWidth', 2); % Trace le signal
title('Signal Carré sur Deux Périodes');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;
