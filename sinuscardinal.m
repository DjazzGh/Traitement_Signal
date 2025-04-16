% Paramètres
t = -2:0.01:2; % Vecteur temps pour deux "périodes" (de -2 à 2)

% Génération du signal sinus cardinal
signal = sinc(t); % Signal sinc avec la fonction sinc

% Visualisation
figure(10); % Ouvre la figure 10
plot(t, signal, 'm', 'LineWidth', 2); % Trace le signal
title('Signal Sinus Cardinal sur Deux "Périodes"');
xlabel('Temps');
ylabel('Amplitude');
grid on;