% test 12
%
%
%%
clear

% Datos
x=7;      % Se calcula sqrt(x)

% Valores iniciales de la iteración
r0=0;     % valor inicial de r0=rk-1
r1=x/2;   % valor inicial de r1=rk
iter=0;   % contador de iteraciones

while abs(r1-r0) > 1e-3 % Continua la iteración hasta que|rk-k-1|<1e-3
   r0=r1;           % Se guarda el valor de la iteración anterior k-1
   r1=(r0+x/r0)/2;  % se actualiza rk
   iter=iter+1;     % se incrementa el contador de iteraciones
   end

fprintf('\nValor de sqrt(7) MATLAB\t\t%0.15f\n',sqrt(7))
fprintf('Valor de sqrt(7) calculado\t%0.15f\n',r1)
fprintf('Número de iteraciones = %d\n',iter)

