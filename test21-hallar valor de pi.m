% test 20
%

clear

% Su código aquí

% Integrando un semicírculo de radio 1
f=@(x) sqrt(1-x.^2);
A=integral(f,-1,1);
pi_est=2*A;

fprintf('\n pi y pi estimado\n')
fprintf('%0.15f\n',[pi;pi_est])

fprintf('\nError absoluto = %0.15f\n',abs(pi-pi_est))
fprintf('\nError relativo = %0.15f\n',abs(pi-pi_est)/pi)

%% Sumas parciales de series

% Serie de Leibniz
S=0;
for n=0:10000
   S=S+(-1)^n*1/(2*n+1);
end

pi_est=4*S;
fprintf('\nError absoluto = %0.15f\n',abs(pi-pi_est))
fprintf('\nError relativo = %0.15f\n',abs(pi-pi_est)/pi)

% Serie de Euler

%% Con matemática simbólica
clear

syms y(x)

y(x)=sqrt(1-x^2);

A=int(y,[-1 1]);

pi_est=2*A;

fprintf('\nError absoluto = %0.15f\n',abs(pi-pi_est))
fprintf('\nError relativo = %0.15f\n',abs(pi-pi_est)/pi)
