t = -10:1/1000:10;

delta = zeros(size(t));

% Affectation de 1 uniquement pour t = 2 (l'impulsion de Dirac retardée)
delta(find(t == 2)) = 1;

figure(2);

% Tracé du signal delta retardé
stem(t, delta);

grid;

% Étiquettes des axes
xlabel('temps en (s)');
ylabel('amplitude en (v)');

% Titre du graphique
title('Signal Dirac retardée de 2 secondes');
