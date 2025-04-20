t = -10:1/1000:10;     
u = zeros(size(t));      
u(find(t >= 0)) = 1;    

figure(3);               
plot(t, u, 'LineWidth', 2); 
grid on;                
xlabel('temps en (s)');
ylabel('amplitude en (v)');
title('signal échelon unitaire u(t)');
