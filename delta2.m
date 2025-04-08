% delta2.m : Construction et tracé de la Dirac retardée de 2 secondes

% Définition de l'échelle du temps de -10 à +10 avec 1000 échantillons par seconde
t = -10:1/1000:10;

% Initialisation du signal delta (échelle de zéro)
delta = zeros(size(t));

% Affectation de 1 uniquement pour t = 2 (l'impulsion de Dirac retardée)
delta(find(t == 2)) = 1;

% Ouverture d'une nouvelle figure (Figure 2)
figure(2);

% Tracé du signal delta retardé
stem(t, delta);

% Ajout de la grille
grid;

% Étiquettes des axes
xlabel('temps en (s)');
ylabel('amplitude en (v)');

% Titre du graphique
title('Signal Dirac retardée de 2 secondes');
