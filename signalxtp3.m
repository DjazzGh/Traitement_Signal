fe = 2000;              % Fréquence d’échantillonnage
f1 = 100;               % Fréquence dans la bande passante
f2 = 400;               % Fréquence dans la bande atténuée
t = 0:1/fe:1;           % Temps de 0 à 1 seconde

x1 = cos(2*pi*f1*t);    % Composante à 100 Hz
x2 = cos(2*pi*f2*t);    % Composante à 400 Hz
x = x1 + x2;            % Signal composé

% ✅ Affichage
plot(t, x);
xlabel('Temps (s)');
ylabel('Amplitude');
title('Signal composé de deux fréquences : 100 Hz et 400 Hz');
grid on;
xlim([0 0.05]); % On zoom sur les 50 premières millisecondes pour voir les oscillations
