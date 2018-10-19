% CALCULO NUMERICO
% LAB 02
% PAOLA CASTRO 13-10248

disp('EJERCICIO N° 1');
%   INCISO A
A1 = [10^-8,-1,10^10;10,(10^-8)-10^7,1;1,-1,1];
b1 = A1 * [1;-1;1];
A2 = [4,-1,1;10^-9,10^-6,10^-9;10^-16,-10^-16,1];
b2 = A2 * [1;-1;1];

%   INCISO B
% Se sabe que si el rango de A es igual al rango de la matriz
% ampliada de A con b, y esto igual al número de incógnitas, entonces 
% tenemos que el SEL tiene una única solución.
disp("INCISO B");
C1 = [A1 b1];
if rank(A1) == rank(C1)
    if rank(A1) == length(A1)
        disp("El sistema A1 tiene solución única");
    else
        disp("El sistema A1 no tiene solución única\n");
    end
else
    disp('El sistema A1 no tiene solución única');
end

C2 = [A2,b2];
if rank(A2) == rank(C2)
    if rank(A2) == length(A2)
        disp("El sistema A2 tiene solución única\n");
    else
        disp('El sistema A2 no tiene solución única');
    end
else
    disp('El sistema A2 no tiene solución única');
end

disp("\n")
disp('INCISO C');
disp(" PARA SISTEMA 1")
%##########
disp('Solucion SIN pivoteo:');
obtenido=gauss(A1,b1,0);
disp(obtenido);
fprintf("Error relativo:  ");
disp(Err_rel([1;-1;1],obtenido));
%##########
disp('Solucion CON pivoteo: ');
obtenido=gauss(A1,b1,1);
disp(obtenido);
fprintf('Error relativo :');
disp(Err_rel([1;-1;1],obtenido));
%###########################################
disp("\n")
disp('PARA SISTEMA 2');
%##########
disp('Solucion SIN pivoteo:  ');
obtenido=gauss(A2,b2,0);
disp(obtenido);
fprintf('Error relativo:  ');
disp(Err_rel([1;-1;1],obtenido));
%##########
disp('Solucion CON pivoteo:  ');
obtenido=gauss(A2,b2,1);
disp(obtenido);
fprintf('Error relativo:  ');
disp(Err_rel([1;-1;1],obtenido));

% se puede observar que en el sistema 1 el primer pivote es un numero muy pequeño
% y dividir entre el (pivoteo) se obtienen errores. ademas se puede notar que en 
% el sistema 2 el pivoteo no hace mucha diferencia pues este da una matriz 
% diagonal dominante. 

% Aqui es donde podemos observar la importancia del pivoteo con la aritmetica 
% inexacta, si se usa aritmetica exacta realmente no hay diferencia.

disp("\n")
disp('INCISO D ');
disp(" PARA SISTEMA 1")
fprintf('Determinante:  ');
disp(det(A1));
fprintf('Número de Condición: ');
disp(cond(A1));
fprintf('Autovalor Maximo y Minimo: ');
disp(autovalores(A1));
disp("\n")
disp(" PARA SISTEMA 2")
fprintf('Determinante:  ');
disp(det(A2));
fprintf('Número de Condición: ');
disp(cond(A2));
fprintf('Autovalor Maximo y Minimo: ');
disp(autovalores(A2));


% Si el determinante de es cercano a 0, la matriz se hace casi singular para la
% aritmetica del computador lo cual dificulta el calculo de la inversa y la
% resolucion de los sistemas lineales de ecuaciones. 

% El numero de condicion entre mas se aleja de 1 influye mas gravemente en la 
% cota del error de salida dado en error en la entrada, pues miemtras mas lejos
% de 1 esta mas problemas tendre

disp("\n")
disp('INCISO E ');
disp(" PARA SISTEMA 1")
fprintf('Se Verifica la Relacion SIN pivote:  ');
disp(verificacion(A1,b1,0));
fprintf('Se Verifica la Relacion CON pivote:  ');
disp(verificacion(A1,b1,1));
disp("\n")
disp(" PARA SISTEMA 2")
fprintf('Se Verifica la Relacion SIN pivote:  ');
disp(verificacion(A2,b2,0));
fprintf('Se Verifica la Relacion CON pivote:  ');
disp(verificacion(A2,b2,1));

% Los autovalores de la matriz nos dan informacion relacionada a la singularidad,
% de la matriz, entre mas cercanos a 0, mas se comprometen los calculos.

% Pudimos ver que la relacion teorica siempre se verifica pues la relacion es 
% igual a 1
