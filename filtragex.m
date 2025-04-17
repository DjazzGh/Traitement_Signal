% ===== Question 3 - Application du filtre =====

% Données du filtre
fa = 200;           % fréquence de la bande passante
fc = 350;           % fréquence de la bande atténuée
wa = 2*pi*fa;       % pulsation de fa
wc = 2*pi*fc;       % pulsation de fc
ra = 2;             % Atténuation max en bande passante (dB)
rc = 40;            % Atténuation min en bande coupée (dB)

% Conception du filtre Butterworth analogique
[n, wn] = buttord(wa, wc, ra, rc, 's'); % Calcul de l’ordre
[b, a] = butter(n, wn, 's');            % Calcul des coefficients du filtre

% Construction du signal x(t)
fe = 2000;           % fréquence d’échantillonnage
f1 = 100;            % fréquence dans la bande passante
f2 = 400;            % fréquence hors bande
t = 0:1/fe:1;        % vecteur temps de 1 seconde

x1 = cos(2*pi*f1*t); % composante à 100 Hz
x2 = cos(2*pi*f2*t); % composante à 400 Hz
x = x1 + x2;         % signal composé

% Application du filtre analogique au signal
sys = tf(b, a);        % création de la fonction de transfert
y = lsim(sys, x, t);   % sortie filtrée du signal

% Affichage dans le domaine temporel
figure;
subplot(211);
plot(t, x);
grid on;
axis([0 5/f1 -2 2]);
xlabel('Temps (s)');
title('Signal x(t) avant filtrage');

subplot(212);
plot(t, y);
grid on;
axis([0 5/f1 -2 2]);
xlabel('Temps (s)');
title('Signal y(t) après filtrage');
