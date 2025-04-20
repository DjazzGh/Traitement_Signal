Fe = 1000; 
t = -10:1/Fe:10;
p = zeros(size(t)); 
id = find((t > -1) & (t <= 1)); 
p(id) = 1; % Construction d'une impulsion carrée de -1 à 1
figure(1);
plot(t, p, 'LineWidth', 2);
grid;
axis([-10 10 0 1.5]);
xlabel('temps en (s)');
ylabel('amplitude en (v)');
title('signal impulsion carrée');
