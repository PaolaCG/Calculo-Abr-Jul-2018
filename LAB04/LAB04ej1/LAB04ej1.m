%PAOLA CASTRO 13-10248
%LAB04
%EJERCICIO 1

disp("EJERCICO 1. Factorizacion de Cholesky - Temperatura de placa");
disp("\n");
disp("INCISO A");
disp("La matriz asociada al sistema es: ");
A=[4,-1,-1,0,0,0,0,0;-1,4,0,-1,0,0,0,0;-1,0,4,-1,-1,0,0,0;0,-1,-1,4,0,-1,0,0;0,0,-1,0,4,-1,-1,0;0,0,0,-1,-1,4,0,-1;0,0,0,0,-1,0,4,-1;0,0,0,0,0,-1,-1,4]
%Ts,Tiz,Td,Tin,Td,Tin,Ts,Tiz
%Ts+Tiz,Tiz+Tin,Ts,Tin,Ts,Tin,Tiz+Ts,Tiz+Tin
disp("El vector b asociado es: ");
b=[5;15;0;10;0;10;5;15]
disp("\n");

disp("INCISO B");
if A==A'
  disp("la matriz es simetrica")
end
disp("El menor autovalor de A es:")
disp(min(eig(A)))
n=length(A);
disp("\n");

% La matriz es pentadiagonal pues los únicos elementos distintos de cero están 
% en la diagonal principal, y en las dos diagonales segundarias arriba y debajo  
% de ésta. Es simétrica pues su transpuesta es exactamente la misma matriz. Es
% definida positiva pues al calcular los autovalores de los Menores Principales
% matrices que resultan de eliminar las filas y columnas asociadas a cada
% elemento de la diagonal principal) resultan: (se da un breve esbozo de cómo
% calcularlos, asumiendo que a es la matriz pedida.
% Como los autovalores de cada Menor Principal de la matriz resultan positivos,
% la matriz es definida positiva


disp("INCISO C");
disp("La matriz L (triangular inferior) de la descomposición de Cholesky es:");
L=cholesky(A,b);
disp("L");
disp("\n");

disp("INCISO D");
disp("El vector x que se solicita para resolver el sistema es: ");
disp(L);
disp("Matriz de Banda con k1=2,k2=0");
disp("L traspuesta");
disp(L');
disp("Matriz de Banda con k1=0,k2=2");
disp("\n");

disp("INCISO E");
disp(L);

%Suponga ahora que las temperaturas superior,izquierda,derecha e inferior
%"De la placa son Ts,Tiz,Td y Tin respectivamente.
%tempsup,tempinf,tempizq,tempder
Ts=input('Ingrese el valor de la variable Ts (temperatura superior): ')
Tiz=input('Ingrese el valor de la variable Tiz (temperatura izquierda): ')
Td=input('Ingrese el valor de la variable Td (temperatura derecha): ')
Tin=input('Ingrese el valor de la variable Tin (temperatura inferior): ')
disp("Cada Fila representa en orden creciente la temperaturas de cada nodo");
disp(tempplaca(Ts,Tiz,Td,Tin));





