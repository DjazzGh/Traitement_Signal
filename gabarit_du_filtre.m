
fa = 200; % Fréquence de la bande passante (en Hz)
fc = 350; % Fréquence de coupure (en Hz)
fmax = 500; % Fréquence maximum pour l'affichage (en Hz)


ra = 2; % Atténuation maximale en bande passante (dB)
rc = 40; % Atténuation minimale en bande atténuée (dB)
rmax = 50; % Atténuation maximale sur toute la gamme de fréquence (en dB)

% Tracé du gabarit (échelle linéaire)
f = linspace(10, fmax, 500); % Fréquences réparties linéairement
H = zeros(size(f));


H(f < fa) = ra; % Atténuation maximale dans la bande passante
H(f >= fc) = rc; % Atténuation minimale dans la bande atténuée


figure(5);
plot(f, H, 'LineWidth', 2); % Tracé en échelle linéaire
hold on;

% Ajouter une ligne pour l'atténuation maximale sur toute la gamme
plot([fa fmax], [rmax rmax], 'r--', 'LineWidth', 2);

grid on;
xlabel('Fréquence (Hz)');
ylabel('Atténuation (dB)');
title('Gabarit du filtre passe-bas de Butterworth');
legend({'Gabarit', 'Atténuation maximale à 50 dB'}, 'Location', 'SouthEast');

% Forcer l'échelle linéaire pour l'axe des fréquences
set(gca, 'XScale', 'linear'); % S'assurer que l'échelle de l'axe X est linéaire
