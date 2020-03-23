% test 20
%
% Puesto de trabajo profesor
%
clear

% Su código aquí

% Declaraciones
syms f(x)

% función raional
Num(x)=x^2;
Den(x)=x-3;
f(x)=Num(x)/Den(x);

% Gráfica
ezplot(f,[-9 15])
hold on

% extremos
Df(x)=diff(f(x));
ext=solve(Df(x));
plot(ext(1),f(ext(1)),'og'), text(double(ext(1)),double(f(ext(1))-4),'máximo')
plot(ext(2),f(ext(2)),'or'), text(double(ext(2)),double(f(ext(2))+5),'mínimo')

% asíntotas
vertical=3;
a=limit(f(x)/x,Inf);    % pediente de una posible asíntota oblicua
b=limit(f(x)-a*x, Inf); % desplazamiento de la asíntota
ezplot(a*x+b,[-9 15])  % asíntota oblicua
plot([3 3],[-40 50],'k') % asíntota vertical
axis([-9 15 -40 50])
grid on

ylabel('f(x)'),title('Gráfica del test 22')

hold off

