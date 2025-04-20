
f = 1; 
T = 1/f; 
t = 0:0.01:2*T; 


signal = square(2*pi*f*t); 


figure(7); 
plot(t, signal, 'b', 'LineWidth', 2); 
title('Signal Carré sur Deux Périodes');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;
