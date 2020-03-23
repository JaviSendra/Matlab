% test 20
%
% Puesto de trabajo profesor
%
clear

% Su c�digo aqu�

% Declaraciones
syms f(x)

% funci�n raional
Num(x)=x^2;
Den(x)=x-3;
f(x)=Num(x)/Den(x);

% Gr�fica
ezplot(f,[-9 15])
hold on

% extremos
Df(x)=diff(f(x));
ext=solve(Df(x));
plot(ext(1),f(ext(1)),'og'), text(double(ext(1)),double(f(ext(1))-4),'m�ximo')
plot(ext(2),f(ext(2)),'or'), text(double(ext(2)),double(f(ext(2))+5),'m�nimo')

% as�ntotas
vertical=3;
a=limit(f(x)/x,Inf);    % pediente de una posible as�ntota oblicua
b=limit(f(x)-a*x, Inf); % desplazamiento de la as�ntota
ezplot(a*x+b,[-9 15])  % as�ntota oblicua
plot([3 3],[-40 50],'k') % as�ntota vertical
axis([-9 15 -40 50])
grid on

ylabel('f(x)'),title('Gr�fica del test 22')

hold off

