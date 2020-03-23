% test 6
%

clear

%% Versi�n con c�lculos matriciales
x=-4:.1:4; y=-3:.1:3;
[X,Y]=meshgrid(x,y);
Z=sin(X.^2+Y.^2)./(X.^2+Y.^2);

%Comprobaci�n
Z(isnan(Z))=1;
surf(x,y,Z)
view(-40,65)

%% Versi�n con c�culos escalares, sin emplear la potencia de c�lculo matricial de MATLAB
clear

m=0;
for x=-4:0.1:4
    m=m+1;
    n=0;
    for y=-3:.1:3
        n=n+1;
        Z(m,n)=sin(x^2+y^2)/(x^2+y^2);
    end
end
Z=Z.';

%Comprobaci�n
Z(isnan(Z))=1;
surf(linspace(-4,4,m),linspace(-3,3,n),Z)
view(-40,65)

