%LAB03 
%PAOLA CASTRO
%13-10248

disp("EJERCICIO 4 \n")
disp(" INVERSA \n")

disp("PARA EL EJERCICIO 2 \n");
disp("el vector es V: [1, 1/2 , 1/3 , 1/3 ,..., 1/2n+1] \n");
disp("PARA N=5");
v=vector(5);
T=matriz_toeplitz(v);
obtenido=inversa(T);
disp('Norma Infinto de la matriz (A*A^-1)-I');
disp(norm((T*obtenido)-eye(length(T)),inf));

disp("\n");
disp('PARA N=25');
v=vector(25);
T=matriz_toeplitz(v);
obtenido=inversa(T);
disp('Norma Infinto de la matriz (A*A^-1)-I');
diferencia=((T*obtenido)-eye(length(T)));
disp(norm(diferencia,inf));

disp("\n");
disp(" PARA = [-3; -2; -1; 0.01; 1; 2; 3] \n ");
v = [-3; -2; -1; 0.01; 1; 2; 3];
T=matriz_toeplitz(v);
obtenido=inversa(T);
disp('Norma Infinto de la matriz (A*A^-1)-I');
disp(norm((T*obtenido)-eye(length(T)),inf));



disp("\n");
disp("PARA EL EJERCICIO 3 \n");
disp(" PARA T = vander([0.5 0.6 0.7 0.8 0.9]) \n ");
T = vander([0.5 0.6 0.7 0.8 0.9]);
obtenido=inversa(T);
disp('Norma Infinto de la matriz (A*A^-1)-I');
disp(norm((T*obtenido)-eye(length(T)),inf));

disp("\n");
disp("PARA T = vander([0.5 0.6 7 8 9 10 13]) \n ");
obtenido=inversa(T);
disp('Norma Infinto de la matriz (A*A^-1)-I');
disp(norm((T*obtenido)-eye(length(T)),inf));

% Se puede notar que la forma en la que se calculo la inversa corre en tiempo n^3, la forma mas eficiente
% de calcularla fue por medio de la factorizacion LU. 
% Al probar el programa vemos que funciona para casi todas las matrices dadas en los ejercicios anteriores, excepto
% para el valor n=25 del ejercicio 2, pues en este caso se tienen errores con la inversa
% ademas podemos observar que la norma infinito para los dos ultimos ejericios
% es igual.
