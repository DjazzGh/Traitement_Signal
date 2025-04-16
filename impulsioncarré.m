% Paramètres
Fe = 1000; % Fréquence d'échantillonnage (Hz)
t = -10:1/Fe:10; % Echelle temps de -10 à +10 avec pas de 1/Fe

% Construction du signal impulsion carrée
p = zeros(size(t)); % Initialisation du vecteur p avec des zéros
id = (t > -1) & (t <= 1); % Détection des points dans l'intervalle (-1, 1)
p(id) = 1; % Mise à 1 pour construire l'impulsion carrée

% Visualisation
figure(1);
plot(t, p, 'LineWidth', 2);
grid on;
axis([-10 10 0 1.5]);
xlabel('temps en (s)');
ylabel('amplitude en (v)');
title('signal impulsion carrée');