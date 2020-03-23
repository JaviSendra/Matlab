% test 16



%% Algoritmo 1
clear

% Datos
x=[20 5 5 7 10 15 15 15 6 9 9];



x=sort(x,'ascend');  % Ordenación
z=x-[0 x(1:end-1)];  % en z no hay repetidos excepto ceros
y=x(z~=0);           % y no tiene repeticiones

% Presentación del resultado
fprintf('\nEl vector x sin repeticiones es:\n[')
fprintf('%d ',y)
fprintf('\b]\n')

%% Algoritmo 2
clear

% Datos
x=[30 30 5 8 3 3 4 78 78];

y=[];             % "saco" vacío para almacenar la solución
while ~isempty(x) % se procede siempre que x tenga elementos
    y=[y x(1)];   % x(1) siempre pertenece a la solución: se "echa" al saco
    x(x==x(1))=[];% Se suprime x(1) y todos sus iguales
end

% Presentación del resultado
fprintf('\nEl vector x sin repeticiones es:\n[')
fprintf('%d ',y)
fprintf('\b]\n')


