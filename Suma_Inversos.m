function s=Suma_Inversos(N)

% s=Suma_Inversos(N)
% Suma de los inversos de los N primeros enteros positivos
%
% Entrada
%         N, n�mero de enteros
%
% Salida
%         s, suma de los inversos


n=1:N;
s=sum(1./n);

end