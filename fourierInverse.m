% Définition des fréquences (ex: de -50 à 50 Hz, échantillonnées à 100 points)
N = 100;                    % Nombre de points
fr = linspace(-50, 50, N);  % Axe fréquentiel

% Création du spectre fréquentiel : X(f) = 1 pour toutes les fréquences
Xf = ones(size(fr));        % Signal fréquentiel constant

% Visualisation du spectre
figure
plot(fr, Xf, 'LineWidth', 2)
xlabel('Fréquence (Hz)')
ylabel('Amplitude')
title('Spectre X(f)')
grid on

% Calcul de la transformée de Fourier inverse
xt = ifft(Xf);

% Visualisation du signal temporel résultant
figure
plot(real(xt), 'LineWidth', 2)  % On trace seulement la partie réelle
xlabel('Temps (échantillons)')
ylabel('Amplitude')
title('Signal temporel x(t) obtenu par IFFT de X(f)')
grid on
