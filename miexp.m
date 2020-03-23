function y=miexp(x)

% y=miexp(x) calcula un valor aproximado
%            de la función exponencial para cualquier
%            número real x

Enm1=1;   % En-1, valor inicial
En=1+x;   % En, valor inicial
n=2;

while abs(En-Enm1) > 1e-6
    Enm1=En;                 % En-1=En
    En=En+x^n/factorial(n);  % Acumulamos la suma parcial
    n=n+1;
end

y=En;

end