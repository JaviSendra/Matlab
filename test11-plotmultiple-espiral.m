% test 10
%

clear


t=0:.1:10*pi;
x=t.*cos(t);
y=t.*sin(t);
z=t;
h=plot3(x,y,z,'b',[x(1) x(end)],[y(1) y(end)],[z(1) z(end)],'r');
h(1).LineWidth=2;
h(2).LineWidth=3;
title('Figura del test 11')
xlabel('x'); ylabel('y'), zlabel('z')
view(20,70)
grid on
