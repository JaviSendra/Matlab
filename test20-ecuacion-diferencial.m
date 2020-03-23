% test 20
%
% Puesto de trabajo profesor
%
clear

% Su c�digo aqu�

dydx=@(x,yn) [yn(2); yn(3); x.*exp(x)];  % Ecuaci�n diferencial

[x,yn]=ode45(dydx,[0, 2],[-2 -1 0]);   % integraci�n con ode45

% Gr�ficas
plot(x,yn(:,1),'g',x,yn(:,2),'r',x,yn(:,3),'k')
xlabel('x'), grid on
title('Soluci�n de la ecuaci�n diferencial del test 20')
legend('yn(x)','yn''(x)','yn''''(x)','Location','NorthWest')

% Comparaci�n con la soluci�n de la ecuaci�n diferencial
ya=(x-3).*exp(x)+x.^2/2+x+1;

% Error
Eerror=sum((ya(1:end-1)-yn(1:end-1,1)).^2.*diff(x));
fprintf('\nEnerg�a de y(x)-ys(x) = %0.15f\n',Eerror)
