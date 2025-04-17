Fe = 1000;              % Fréquence d'échantillonnage
t = -10:1/Fe:10;        % Axe temporel

p = zeros(size(t));     % Initialisation du signal p(t) une fois que t est défini
id = (t > -1) & (t <= 1);
p(id) = 1;

sp_p = abs(fft(p));      % Module de la transformée de Fourier
sp_p = sp_p / Fe;        % Normalisation (optionnelle mais courante)

N = length(p);           % Nombre d'échantillons
fr = (0:N-1)*(Fe/N);     % Axe des fréquences (Hz)

figure(2);
subplot(2,1,1);
plot(t, p, 'LineWidth', 2); grid on;
axis([-10 10 0 1.5]);
xlabel('temps en (s)');
ylabel('amplitude en (V)');
title('Signal impulsion carrée p(t)');

subplot(2,1,2);
plot(fr, sp_p, 'LineWidth', 1.5); grid on;
xlim([0 10]);                    % Zoom sur les basses fréquences
xlabel('Fréquence (Hz)');
ylabel('|P(f)|');
title('Spectre de Fourier |P(f)|');
