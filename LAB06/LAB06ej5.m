%PAOLA CASTRO
%13-10248
%LAB06 ejercicio 5

A=[-149,-50,-154;537,180,546;-27,-9,-25];
autovectores_matlab=eig(A)
disp('Obtenemos el autovector maximo con el metodo de la potencia')
[x,r,k] = potencia(A,ones(n,1),1000,10^-6);
maximo=r
disp('Obtenemos el autovector minimo con el metodo de la potencia inversa')
[x,r,k] = potencia_inv(A,ones(n,1),1000,10^-6);
minimo=r
disp('Obtenemos el autovector restante con el metodo de la potencia inversa desplazada')
disp('Para un M=1.7')
[x,r,k] = potencia_inv_despl(A,ones(n,1),1.7,1000,10^-6);
restante=r

% el metodo se encarga de obtener aproximaciones de los autovalores reales de A
% estas aproximaciones tiendes a ser bastante exactas comparadas con otros
