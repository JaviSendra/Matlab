% test 4
%

clear

% Datos
datos=xlsread('BASE-DATOS','C4:F13');

% Presentaci�n
fprintf('\nPluviometr�a para diferentes estaciones en el mes de enero\n')
fprintf('Coordenada X\t\tCoordenada Y\t\tAltitud\t\tPrecipitaci�n\n')
fprintf(' %9.1f\t\t\t%9d\t\t\t%5d\t\t%9.2f\n',datos.')
