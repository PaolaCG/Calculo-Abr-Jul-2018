%%  LAB07 Analisis
%%  PAOLA CASTRO 13-10248
%%  CALCULO NUMERICO

% podemos observar que a medida que el polinomio va aumentando de grado
% nuestro error cuadratico medio total va disminuyendo esto significa que 
% a medida que el polinomio es mas grande, el promedio de los errores
% cuadrados de cada uno es mas pequeño
% Luego de graficar las aproximaciones obtenidas (con 'polyfit' funcion de 
% matlab) vemos que el polinomio de grado 15 es mas confiable que el 
% polinomio de grado 20 para las aproximaciones de los valores, esto es 
% por que, aunque la aprox para el pol. de grado 20 es mas ajustada 
% a los puntos, las oscilaciones que presenta en el intervalo de 
% [4.5, 5.5] lo hacen menos confiable que el polinomio de 15 grados
% Por otro lado vemos que el ultimo calculo realizado (inciso D) presenta  
% las cifras pedidas, en cambio, aunque en los tres calculos anteriores a este 
% (inciso C) usamos 'format long' para trabajar con 15 cifras decimales, 
% estos no presentan estas cifras, esto nos dice que en estos casos  las cifras 
% no eran significativas. 
% Asi mismo, la funcion tiempo usada en D solo encontro un candidato, por 
% lo tanto, el resultado de esta es el tiempo que buscamos 
% para encontrar este valor usamos nuestra funcion tiempo a la cual 
% le pasamos un polinomio al que se le resta 36.612 y a partir de esto
% obtenemos un nuevo polinomio al cual le buscamos los autovalores, ignorando
% a los que esten entre [0 , 8]y tengan la parte imaginaria nula 