% test 23
%
% Puesto de trabajo PROFESOR
%
%

%% Pregunta 1 aplicando el concepto de autofunción
clear

% Su código aquí:

syms x(t) H(w)

% Datos
w0=2*pi*100;
H(w)=2/(4+w^2)

% Entrada exponencial
x(t)=2*exp(1j*w0*t)

% Salida considerando que la entrada es una autofunción
y(t)=H(w0)*x(t)

% Gráficas de la parte real e imaginaria de la salida
subplot(211), ezplot(real(y(t)),[0, .1])
xlabel('t'), title('Real[y(t)]')
grid on
subplot(212), ezplot(imag(y(t)),[0, .1])
xlabel('t'), title('Imag[y(t)]')
grid on
subplot

%% Pregunta 1 aplicando la relación Y(w)=X(w)*H(w)
clear

% Su código aquí:

syms x(t) H(w)

% Datos
w0=2*pi*100;
H(w)=2/(4+w^2)

% Entrada exponencial
x(t)=2*exp(1j*w0*t)
X(w)=fourier(x)

% Salida
Y(w)=X*H;
y(t)=ifourier(Y)

% Gráficas de la parte real e imaginaria de la salida
subplot(211), ezplot(real(y(t)),[0, .1])
xlabel('t'), title('Real[y(t)]')
grid on
subplot(212), ezplot(imag(y(t)),[0, .1])
xlabel('t'), title('Imag[y(t)]')
grid on
subplot

%% Pregunta 2
clear

% Su código aquí

syms h(t) H(s) w

% Respuesta impulsiva
h(t)=exp(-2*abs(t));

% Cálculo de H(s)
H1=laplace(h(t));
H2=laplace(h(-t)); H2=subs(H2,s,-s);
H=H1+H2;
H=simplify(H);
disp('H(s)='), pretty(H)

% Respuesta en frecuencia
H(w)=fourier(h)
H(w)=subs(H,s,1j*w)

% Gráficas módulo y fase
subplot(211), ezplot(20*log10(abs(H)),[-20 20])
grid on, xlabel('\omega'), ylabel('dB')
title('20log_{10}(|H(\omega)|)')

subplot(212), ezplot(angle(H(w)),[-20 20])
grid on, xlabel('\omega'), ylabel('rad')
title('<H(\omega)')

subplot


