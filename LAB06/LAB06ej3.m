%PAOLA CASTRO
%13-10248
%LAB06 ejercicio 3

A=[-1+i,0,1/4;1/4,1,1/4;1,1,3];
B=[1,3,-2;-1,-2,3;1,1,2];
[n m]=size(B);

disp('Autovalores de A')
autovalores_matlab=eig(A)
[x,r,k] = potencia(A,ones(n,1),1000,10^-6);
maximo_autovalor=r
[x,r,k] = potencia_inv(A,ones(n,1),1000,10^-6);
minimo_autovalor=r
disp("\n")
disp("\n")
disp('Autovalores de B')
eig(B)
[x,r,k] = potencia(B,ones(n,1),1000,10^-6);
maximo_autovalor =r
[x,r,k] = potencia_inv(B,ones(n,1),1000,10^-6);
minimo_autovalor=r


% Observamos que A tiene todos los autovalores distintos y que el metodo para 
% esta matriz converge
% La matriz B tiene dos autovalores iguales y el metodo no converge pues no hay
% minimo autovalor