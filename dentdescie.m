
f = 1; % Fréquence du signal (en Hz)
T = 1/f; % Période du signal
t = 0:0.01:2*T; % Vecteur temps pour deux périodes (pas de 0.01s)

% Génération du signal en dent de scie
signal = sawtooth(2*pi*f*t); % Signal en dent de scie avec la fonction sawtooth

% Visualisation
figure(8); % Ouvre la figure 8
plot(t, signal, 'r', 'LineWidth', 2); % Trace le signal
title('Signal en Dent de Scie sur Deux Périodes');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;