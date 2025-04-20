fa=200 ;
fc=350 ;
%pour le filtre analogique sur MATLAB on introduit les pulsations
wa=2*pi*fa;
wc=2*pi*fc;
ra=2; %atténuation maximale en bande passante 2dB
rc=40; %atténuation minimale en bande coupée 40dB
[n, wn] = buttord(wa, wc, ra, rc, 's');
disp(['L''ordre du filtre nécessaire est : ', num2str(n)]);
