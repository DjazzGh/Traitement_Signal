
f = 1; 
T = 1/f; 
t = 0:0.01:2*T; % Vecteur temps pour deux périodes (pas de 0.01s)


signal = sawtooth(2*pi*f*t); % Signal en dent de scie avec la fonction sawtooth


figure(8); 
plot(t, signal, 'r', 'LineWidth', 2); 
title('Signal en Dent de Scie sur Deux Périodes');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;
