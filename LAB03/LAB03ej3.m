%LAB03 
%PAOLA CASTRO
%13-10248

disp("EJERCICIO 3 \n")

disp("INCISO A \n")

disp("T= vander([0.5 0.6 0.7 0.8 0.9]) \n")
T = vander([0.5 0.6 0.7 0.8 0.9]);
unos=ones(length(T),1);
b=T*unos;

disp("Autovalores");
disp(eig(T)), disp("\n");

disp("Determinante");
disp(det(T)); disp("\n")

disp("Numero de Condicion");
disp(cond(T,inf)); disp("\n");

disp('Gauss Sin Pivoteo ');
obtenido=Elim_gauss_sinpivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(error_relativo(unos,obtenido));
disp("\n")
disp('Gauss Con Pivoteo Parcial ');
obtenido=Elim_gauss_pivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(error_relativo(unos,obtenido));
disp("\n")
disp('Factorizacion LU ');
obtenido=LU(T,b);
disp(obtenido);
disp('Error relativo');
disp(error_relativo(unos,obtenido));

% El determinante de la matriz es distinto de 0 por lo tanto esta matriz es 
% invertible y ademas el 0 no es un autovalor de la matriz
% El numero de condicion entre mas se aleja de 1 influye
% mas gravemente en la cota del error de salida dado en error en la entrada.
% Los autovalores de la matriz nos dan informacion relacionada a la singularidad,
% de la matriz, entre mas cercanos a 0, mas se comprometen los calculos, algo
% similar a lo ya explicado con el determinante.
% el numero de condicionamiento en este caso es de 7.9172e+04
% es un alto por lo tanto esta matriz esta mal condicionada, es de decir,
% al minimo cambio en la entrada los resultados a la salida seran distintos
% los errores relativos son: para gauss sin pivoteo  5.0956e-12
% para gsuss con pivoteo 6.8245e-13, para la Factorizacion LU es de 
% 2.5359e-12, entonces podemos ver que el menor error relativo se da
% usando gauss con pivoteo


disp("\n")
disp("INCISO B \n")

disp("T= vander([0.5 0.6 7 8 9 10 13]) \n")
T = vander([0.5 0.6 7 8 9 10 13]);
unos=ones(length(T),1);
b=T*unos;

disp("Autovalores");
disp(eig(T)), disp("\n");

disp("Determinante");
disp(det(T)); disp("\n")

disp("Numero de Condicion");
disp(cond(T,inf)); disp("\n");

disp('Gauss Sin Pivoteo ');
obtenido=Elim_gauss_sinpivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(error_relativo(unos,obtenido));
disp("\n")
disp('Gauss Con Pivoteo Parcial ');
obtenido=Elim_gauss_pivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(error_relativo(unos,obtenido));
disp("\n")
disp('Factorizacion LU ');
obtenido=LU(T,b);
disp(obtenido);
disp('Error relativo');
disp(error_relativo(unos,obtenido));

% El determinante de la matriz es distinto de 0 por lo tanto esta matriz es 
% invertible y ademas el 0 no es un autovalor de la matriz
% Los autovalores de la matriz nos dan informacion relacionada a la singularidad,
% de la matriz, entre mas cercanos a 0, mas se comprometen los calculos, algo
% similar a lo ya explicado con el determinante.
% el numero de condicionamiento en este caso es de 4.3127e+08
% es un alto por lo tanto esta matriz esta mal condicionada, es de decir,
% al minimo cambio en la entrada los resultados a la salida seran distintos
% los errores relativos son: para gauss sin pivoteo  3.7453e-07
% para gsuss con pivoteo 6.0779e-10, para la Factorizacion LU es de 
% 3.7491e-07, entonces podemos ver que el menor error relativo se da
% usando gauss con pivoteo
