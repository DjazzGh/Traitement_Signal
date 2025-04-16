% Paramètres
f = 1; % Fréquence du signal (en Hz)
T = 1/f; % Période du signal
t = 0:0.01:2*T; % Vecteur temps pour deux périodes (pas de 0.01s)
width = 0.5; % Paramètre WIDTH pour un signal triangulaire (entre 0 et 1)

% Génération du signal triangulaire
signal = sawtooth(2*pi*f*t, width); % Signal triangulaire avec la fonction sawtooth

% Visualisation
figure(9); % Ouvre la figure 9
plot(t, signal, 'g', 'LineWidth', 2); % Trace le signal
title('Signal Triangulaire sur Deux Périodes');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;