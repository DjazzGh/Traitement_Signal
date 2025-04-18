
fe = 1000;          % Fréquence d'échantillonnage en Hz
t = -10:1/fe:10;    % Vecteur temps de -10s à 10s avec pas 1/fe
f0 = 100;           % Fréquence du signal en Hz
x = sin(2*pi*f0*t); % Signal sinusoïdal

figure(6);         
stem(t,x);          
grid on;            
xlabel('temps en (s)');    
ylabel('amplitude en (v)');
title('signal sinusoïdal échantillonné'); 
axis([0 0.02 -1.2 1.2]);  % Limite l'affichage à 2 périodes (0 à 0.02s) et amplitude ±1.2
