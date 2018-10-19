%LAB03 
%PAOLA CASTRO
%13-10248


disp("EJERCICIO 2 \n")
disp("INCISO B \n");
disp("el vector es V: [1, 1/2 , 1/3 , 1/3 ,..., 1/2n+1] \n")
disp("PARA N=5 \n");
v = vector ( 5 );
T = matriz_toeplitz (v);
unos=ones(length(T),1);	%vector de unos dado
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
% de la matriz, entre mas cercanos a 0
% El numero de condicion entre mas se aleja de 1 influye
% mas gravemente en la cota del error de salida dado en error en la entrada.
%podemos observar que el numero de condicion es de 2.9070e+07 
% que es un numero de condicionamiento elevado, por lo tanto 
% nos queda que la matriz esta mal condicionada
% para Gauss sin pivoteo el error relativo es de 2.6203e-11
% para gauss cn pivoteo Parcial es de 5.2604e-10
% para Factorizacion LU es de 1.4211e-10
% entonces podemos observar que el error mas bajo es el que viene
% de la Gauss sin pivoteo 


disp("\n")

disp("PARA N=25 \n");
v = vector ( 25 );
T = matriz_toeplitz (v);
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
% de la matriz, entre mas cercanos a 0
% El numero de condicion entre mas se aleja de 1 influye
% mas gravemente en la cota del error de salida dado en error en la entrada.

% podemos observar que el numero de condicion es algo complicado pues la 
% es la matriz singular a la precisión de la máquina
% para Gauss sin pivoteo el error relativo es de 428.27
% para gauss cn pivoteo Parcial es de 665.63
% para Factorizacion LU es de 63.543
% entonces podemos observar que el error mas bajo es el que viene
% de la Factorizacion LU



disp("\n");
disp(" INCISO B \n")

disp("el vector es V: [-3; -2; -1; 0.01; 1; 2; 3] \n")
v = [-3; -2; -1; 0.01; 1; 2; 3];
T = matriz_toeplitz (v);
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


% El determinante de la matriz es muy cercano a 0 por lo que la matriz se hace casi singular para la
% aritmetica del computador lo cual dificulta el calculo de la inversa 
% Los autovalores de la matriz nos dan informacion relacionada a la singularidad,
% de la matriz, entre mas cercanos a 0
% El numero de condicion entre mas se aleja de 1 influye
% mas gravemente en la cota del error de salida dado en error en la entrada.
% el numero de condicionamiento en este caso es de 842.00
% es un numero excesivamente alejado del 1 por lo tanto esta
% matriz esta muy mal condicionada, es de decir, al minimo cambio
% en la entrada los resultados a la salida seran distintos
% los errores relativos son: para gauss sin pivoteo 4.5526e-12
% para gsuss con pivoteo 1.6098e-14, para la Factorizacion LU es de 
% 4.2958e-12 entonces podemos ver que el menor error relativo se da
% usando gauss con pivoteo parcial 
