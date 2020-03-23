% test 8
%
% Puesto de trabajo Profesor
%
%
clear

% Su c�digo aqu�

% Datos
x0=1; x1=8; dx=.1;
x=x0:dx:x1;

% C�lculo de y(x)
y(x<5)=x(x<5).^2-6*x(x<5)+10;
y(x>=5)=-x(x>=5).^2+13*x(x>=5)-35;

% Gr�fica
plot(x,y,'k','LineWidth',2)
axis([1 8 0 8])
grid minor
title('Figura del test 8, y(x)'), xlabel('x'), ylabel('y(x)')

% C�lculo y presentaci�n de los extremos
%soluci�n 1
[M,iM]=max(y);
[m,im]=min(y);
fprintf('\nLas coordenadas del m�nimo de y(x) son (%d,%d) y las del m�ximo son (%0.2f,%0.2f)\n',[x(im) x(iM); m M])

% soluci�n 2
a=diff(y);
b=a<0;
c=diff(b);
ind=find(c~=0);
fprintf('\nLas coordenadas del m�nimo de y(x) son (%d,%d) y las del m�ximo son (%0.2f,%0.2f)\n',[x(ind+1); y(ind+1)])

% soluci�n 3
ind=find(diff(diff(y,1)<0));
fprintf('\nLas coordenadas del m�nimo de y(x) son (%d,%d) y las del m�ximo son (%0.2f,%0.2f)\n',[x(ind+1); y(ind+1)])

% soluci�n 4
for n=2:length(y)-1
    if (y(n-1)>y(n)) & (y(n)<y(n+1))
        ind_min=n;
    end
    if (y(n-1)<y(n)) & (y(n)>y(n+1))
        ind_max=n;
    end
end
fprintf('\nLas coordenadas del m�nimo de y(x) son (%d,%d) y las del m�ximo son (%0.2f,%0.2f)\n',[x(ind_min) x(ind_max); y(ind_min) y(ind_max)])
