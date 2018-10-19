%PAOLA CASTRO
%13-10248
%LAB06 ejercicio 1

disp("Discos de Gerschgorin y Autovalores")
A=[-1+i,0,1/4;1/4,1,1/4;1,1,3];
B=[1,3,-2;-1,-2,3;1,1,2];
figure
gershgorin(A)
figure
gershgorin(B)