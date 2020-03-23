% test 18
%
% Puesto de trabajo profesor
%
clear

% Su c�digo aqu�

% Datos
load sensor

% C�lculos
A=[ones(size(p)) p p.^2];% Matriz del sistema sobredeterminado
abc=pinv(A)*v;           % Parametros del modelo

rp=0:.1:5; % Rango de presiones para el modelo
vm=abc(1)+abc(2)*rp+abc(3)*rp.^2;   % Modelo v(p)=a+bp+cp^2

% Presentaci�n de resultados
fprintf('\nLos coeficientes del ajuste de m�nimos cuadrados son:\n')
fprintf('a=%0.3f; b=%0.3f; c=%0.3f\n', abc)

% Error del ajuste de m�nimos cuadrados
fprintf('\nEl error del ajuste de m�nimos cuadrados vale %0.2f mv\n',norm(v-A*abc,2))

% Gr�ficas
plot(rp,vm,'g',p,v,'or')
xlabel('presi�n'), ylabel ('milivoltios')
title('Ajuste de m�nimos cuadrados de la relaci�n v(p)')
legend('Moldelo v(p)','Datos medidos','Location', 'NorthWest')
axis([-.5 5.5 -2 30])
grid
