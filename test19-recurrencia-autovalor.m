% test 19
%
clear


% Datos
A =[ 8     8     9     5     5
     8     1     7     4     5
     4     3     4     8     7
     7     1    10     8     8
     2     1     1     2     8];
v0=(1:5)';
v0=v0/norm(v0,2);

% Valores iniciales de la recurrencia
v0=v0/norm(v0,2);
v1=A*v0; v1=v1/norm(v1,2);

% Recurrencia
n=1; % contador de pasos de la recurrencia
while norm(v1-v0,2) >1e-3
    v0=v1;
    v1=A*v1;
    v1=v1/norm(v1,2);
    n=n+1;
end

fprintf('\nNúmero de pasos de la recurrencia %d\n',n)

% Error absoluto y relativo referidos al autovector y al autovalor
[V,D]=eig(A); % Valores de MATLAB, que se suponen los exactos

EabsVector=norm(v1-V(:,1),2);
ErelVector=EabsVector/norm(V(:,1),2);
Autovalor=norm(A*v1,2)/norm(v1,2);
EabsAuto=abs(D(1,1)-Autovalor);
ErelAuto=EabsAuto/abs(D(1,1));

fprintf('\nAutovector con autovalor máximo [%0.4f %0.4f %0.4f %0.4f %0.4f]\n',v1)
fprintf('Error absoluto autovector = %0.6f\n',EabsVector)
fprintf('Error relativo autovector = %0.6f\n',ErelVector)

fprintf('\nAutovalor máximo = %0.4f\n',Autovalor)
fprintf('Error absoluto autovalor = %0.6f\n',EabsAuto)
fprintf('Error relativo autovalor = %0.6f\n',ErelAuto)

