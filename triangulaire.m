
f = 1; % en Hz
T = 1/f; 
t = 0:0.01:2*T; 
width = 0.5;

% Génération du signal triangulaire avec la fonction sawtooth
signal = sawtooth(2*pi*f*t, width); 


figure(9); 
plot(t, signal, 'g', 'LineWidth', 2); % Trace le signal
title('Signal Triangulaire sur Deux Périodes');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;
