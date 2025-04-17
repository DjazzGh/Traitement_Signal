% Spécifications
fa = 200;           % Bande passante (Hz)
fc = 350;           % Bande coupée (Hz)
ra = 2;             % Atténuation max en bande passante (dB)
rc = 40;            % Atténuation min en bande coupée (dB)

% Convertir en pulsations (rad/s)
wa = 2*pi*fa;
wc = 2*pi*fc;

% Détermination de l'ordre et fréquence de coupure normalisée
[n, wn] = buttord(wa, wc, ra, rc, 's');

% Conception du filtre analogique
[b, a] = butter(n, wn, 's');

% Transformer en filtre numérique via bilinear transform
[bz, az] = bilinear(b, a, fe);   % fe = fréquence d’échantillonnage

% Appliquer le filtre numérique au signal
xf = filter(bz, az, x);
