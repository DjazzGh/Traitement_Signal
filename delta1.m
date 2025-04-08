t=-10:1/1000:10; %échelle du temps allant de -10 à +10 avec 1000
%échantillons par seconde
delta=zeros(size(t)); % remplissage par des zéros
delta(find(t==0))=1; % delta =1 seulement pour t=0
figure(1); % ouvrir une figure vide nommée figure1
stem(t,delta); %tracege de delta
grid; %grille
xlabel('temps en (s)');
ylabel('amplitude en (v)');
title('signal impulsion de Dirac');
