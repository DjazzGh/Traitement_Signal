t=-10:1/1000:10; 

delta=zeros(size(t));
delta(find(t==0))=1; % delta =1 seulement pour t=0
figure(1); 
stem(t,delta); %tracege de delta
grid; 
xlabel('temps en (s)');
ylabel('amplitude en (v)');
title('signal impulsion de Dirac');
