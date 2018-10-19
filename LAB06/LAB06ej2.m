%PAOLA CASTRO
%13-10248
%LAB06 ejercicio 2

A=[-1+i,0,1/4;1/4,1,1/4;1,1,3];
B=[1,3,-2;-1,-2,3;1,1,2];

disp('PARA A');
disp('Metodo De La Potencia')
[n m]=size(A);
[x,r,k] = potencia(A,ones(n,1),1000,10^-6)
disp('Metodo De La Potencia Inversa')
[x,r,k] = potencia_inv(A,ones(n,1),1000,10^-6)
disp('Metodo De La Potencia Desplazado')
[x,r,k] = potencia_desplazado(A,ones(n,1),real(A(1,1))-1,1000,10^-6)
disp('Metodo De La Potencia Inversa Desplazado')
[x,r,k] = potencia_inv_despl(A,ones(n,1),real(A(1,1))-1,1000,10^-6)
disp("\n")
disp("\n")
disp('PARA B')
disp('Metodo De La Potencia')
[n m]=size(B);
[x,r,k] = potencia(B,ones(n,1),1000,10^-6)
disp('Metodo De La Potencia Inversa')
[x,r,k] = potencia_inv(B,ones(n,1),1000,10^-6)
disp('Metodo De La Potencia Desplazado')
[x,r,k] = potencia_desplazado(B,ones(n,1),real(A(2,2))-1,1000,10^-6)
disp('Metodo De La Potencia Inversa Desplazado')
[x,r,k] = potencia_inv_despl(B,ones(n,1),real(A(1,1))-1,1000,10^-6)