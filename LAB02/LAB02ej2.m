% CALCULO NUMERICO
% LAB 02
% PAOLA CASTRO 13-10248

%EJERCICO 2
disp('EJERCICIO N° 2');
for n=2:2:10 %tomamos el bucle de dos en dos porque fue una recomendacion del 
  %profesor saltarnos algunos numeros
  disp("\n")
  fprintf('Para');
  disp(n);
  ej2(n);
end
       
figure;
resultados=zeros(3,1);
intervalo=zeros(3,1);

% INCISO D
for k=1:12
  intervalo(k)=k+1;
end

for p=2:13
  resultados(p-1) = cond(hilb(p));
end

hold on;
grid on;
plot(intervalo,resultados,'-r');
title('Matriz de Hilbert');
xlabel('Tamaño');
ylabel('Numero De Condicion');

% Podemos observar que con n=13 tenemos un error relativo superior al 100%
% y con n=12 un error relativo inferior a 100%, por lo tanto el n debe estar 
% entre 12 y 13
% Podemos observar que para n=13 la matriz la matriz posee un numero de condicion
% muy grande, este error es tan grande que aun sin error de entrada el algoritmo
% poseia un error de mas del 100%. 
% Tambien podemos observar, por la grafica, que hay un crecimieto muy pronunciado 
% para n=13. Finalmente, se debe destacar la exactitud del algoritmo A\b.