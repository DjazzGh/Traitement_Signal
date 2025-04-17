N = length(x);
spx = abs(fft(x)) / N;           % Spectre normalisé
fr = (0:N-1)*(fe/N);             % Axe des fréquences

figure;
subplot(2,1,1);
plot(t, x); grid on;
axis([0 5/f1 -1.5 1.5]);
xlabel('temps en s');
title('Signal x(t) = cos(2π100t) + cos(2π400t)');

subplot(2,1,2);
plot(fr, spx); grid on;
axis([0 1000 0 0.6]);            % On ajuste l’axe pour bien voir les pics
xlabel('fréquence en Hz');
title('Spectre du signal x(t)');
