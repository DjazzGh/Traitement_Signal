>> 
% Définition du domaine temporel
t = -2:0.01:2;  

% Calcul de x1(t) = u(t + 0.5)
x1 = zeros(size(t));  % Initialisation
x1(t >= -0.5) = 1;    % Échelon unité décalé à -0.5

% Calcul de x2(t) = u(t - 0.5)
x2 = zeros(size(t));  
x2(t >= 0.5) = 1;     

% Calcul de p(t) = x1(t) - x2(t)
p = x1 - x2;

% Création de la figure 5
figure(5);
plot(t, p, 'b-', 'LineWidth', 2);
grid on;
title('Fonction porte p(t)');
xlabel('t');
ylabel('p(t)');
axis([-2 2 -0.5 1.5]);  % Ajustement des limites des axes

>> 