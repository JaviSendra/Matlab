% test 7
%
% Puesto de trabajo Profesor
%
%% Pregunta 1
%
clear

% Su c�digo aqu�

% Datos
x0=-5; x1=6; dx=0.1;
x=x0:dx:x1;

% C�lculos
y1(x<3)=-x(x<3)+3;
y1(x>=3)=3/2*x(x>=3)-9/2;
y2=1/4*x+7/4;

% Gr�fica
plot(x,y1,'r',x,y2,'g')
axis([0  6 -0.5 4.5])
grid minor
title('Gr�fica de la pregunta 1 del test 7')
legend('y_1(x)','y_2(x)','Location','SouthEast')
xlabel('x')

%% Pregunta 2
%

% Su c�digo aqu�

% Soluci�n 1
fprintf('\nLos puntos de intersecci�n son (%d,%d) y (%d,%d)\n',[x(y1==y2);y1(y1==y2)])

%Soluci�n 2
ind=find(y1==y2);
fprintf('\nLos puntos de intersecci�n son (%d,%d) y (%d,%d)\n',[x(ind); y1(ind)])
