% Calcul du spectre du signal original x(t)
spx = abs(fft(x)) / fe;   % spectre normalisé
% Calcul du spectre du signal filtré y(t)
spy = abs(fft(y)) / fe;

% Axe des fréquences
fr = linspace(0, fe, length(t));


figure;
subplot(211);
plot(fr, spx);
grid on;
axis([0 1000 0 1]);
xlabel('Fréquence (Hz)');
title('Spectre du signal x(t)');

subplot(212);
plot(fr, spy);
grid on;
axis([0 1000 0 1]);
xlabel('Fréquence (Hz)');
title('Spectre du signal y(t) après filtrage');

