
fa = 200; % Fréquence de la bande passante (Hz)
fc = 350; % Fréquence de la bande atténuée (Hz)
ra = 2;   % Atténuation maximale en bande passante (2 dB)
rc = 40;  % Atténuation minimale en bande atténuée (40 dB)

% Conversion en pulsations (rad/s)
wa = 2 * pi * fa;
wc = 2 * pi * fc;

% Calcul de l'ordre du filtre et de la pulsation de coupure normalisée
[n, wn] = buttord(wa, wc, ra, rc, 's');
fprintf('Ordre du filtre : %d\n', n);
fprintf('Pulsation de coupure wn : %.2f rad/s\n', wn);

% Conception du filtre Butterworth
[b, a] = butter(n, wn, 's'); % b : coefficients du numérateur, a : coefficients du dénominateur

% Calcul de la fonction de transfert
[h, w] = freqs(b, a); % h : fonction de transfert, w : pulsations
hh = abs(h); % Module de la fonction de transfert
hh_db = 20 * log10(hh); % Module en dB
aa = abs(1 ./ h); % Atténuation en module
aa_db = 20 * log10(aa); % Atténuation en dB
f = w / (2 * pi); % Conversion des pulsations en fréquences (Hz)

figure;

% Tracé du module de la fonction de transfert
subplot(211);
plot(f, hh_db);
grid on;
title('Module de la fonction de transfert du filtre en dB');
xlabel('Fréquence (Hz)');
ylabel('Gain (dB)');

% Tracé de l'atténuation
subplot(212);
plot(f, aa_db);
grid on;
title('Atténuation du filtre en dB');
xlabel('Fréquence (Hz)');
ylabel('Atténuation (dB)');
axis([0 500 0 60]); % Limites des axes pour correspondre au gabarit
