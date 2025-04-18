Fe = 1000; % Fréquence d'échantillonnage
t = -10:1/Fe:10; % Échelle temps allant de -10 à +10 avec 1000 points entre chaque seconde
p = zeros(size(t)); % Remplissage par des zéros
id = find((t > -1) & (t <= 1)); % Détection des points de t allant de -1 à +1
p(id) = 1; % Construction d'une impulsion carrée de -1 à 1
figure(1);
plot(t, p, 'LineWidth', 2);
grid;
axis([-10 10 0 1.5]);
xlabel('temps en (s)');
ylabel('amplitude en (v)');
title('signal impulsion carrée');
