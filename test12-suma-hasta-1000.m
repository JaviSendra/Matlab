% test 12
%
%
%% Soluci�n con while
clear



% Valores iniciales del contador y del acumulador
n=0;
s=0;

while s <= 1000    % La suma parcial llega a 1000?
    n=n+1;         % Actualizaci�n del contador
    s=s+n;         % Actualizaci�n de la suma parcial 
end
fprintf('\nN = %d\n',n-1)     % N=n-1 ya que Sn>1000

%% Soluci�n con for
clear


% Valor inicial del acumulador
s=0;

for n=1:Inf
    s=s+n;
    if s > 1000
        break
    end
end

fprintf('\nN = %d\n',n-1)
