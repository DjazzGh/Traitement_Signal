t = -10:1/1000:10;        
y = zeros(size(t));      
y(t >= 1) = 1;           

figure(4);
plot(t, y, 'LineWidth', 2);
grid on;
xlabel('temps en (s)');
ylabel('amplitude en (V)');
title('Signal y(t) = u(t - 1)');
