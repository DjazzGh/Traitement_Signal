fe = 1000;                 % Fréquence d'échantillonnage
t = -10:1/fe:10;           % Vecteur temps
f0 = 100;                  % Fréquence du signal
x = sin(2*pi*f0*t);        % Signal sinusoïdal

figure(6);
stem(t, x);                % Représentation en tiges (signal échantillonné)
grid;
xlabel('temps en (s)');
ylabel('amplitude en (V)');
title('Signal sinusoïdal échantillonné');  
