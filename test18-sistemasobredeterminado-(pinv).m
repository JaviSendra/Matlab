% test 18
%
% Puesto de trabajo profesor
%
clear

% Su código aquí

% Datos
load sensor

% Cálculos
A=[ones(size(p)) p p.^2];% Matriz del sistema sobredeterminado
abc=pinv(A)*v;           % Parametros del modelo

rp=0:.1:5; % Rango de presiones para el modelo
vm=abc(1)+abc(2)*rp+abc(3)*rp.^2;   % Modelo v(p)=a+bp+cp^2

% Presentación de resultados
fprintf('\nLos coeficientes del ajuste de mínimos cuadrados son:\n')
fprintf('a=%0.3f; b=%0.3f; c=%0.3f\n', abc)

% Error del ajuste de mínimos cuadrados
fprintf('\nEl error del ajuste de mínimos cuadrados vale %0.2f mv\n',norm(v-A*abc,2))

% Gráficas
plot(rp,vm,'g',p,v,'or')
xlabel('presión'), ylabel ('milivoltios')
title('Ajuste de mínimos cuadrados de la relación v(p)')
legend('Moldelo v(p)','Datos medidos','Location', 'NorthWest')
axis([-.5 5.5 -2 30])
grid
