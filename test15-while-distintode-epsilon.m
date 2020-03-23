% test 16




% Su código aquí

n=0;

while 1 ~= 1+2^-n
    n=n+1;
end

n=n-1;
epsilon=2^-n;

% Presentación
fprintf('\nepsilon = %1.4e, número de bits %d\n',epsilon,n)
