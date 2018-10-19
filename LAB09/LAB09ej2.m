% PAOLA CASTRO
% 13-10248
% CALCULO NUMERICO /// LAB09 ejercicio 2



disp("\n")
tiempo  = [0 3 5 8 13];
distancia  = [0 225 383 623 993];
velocidad = [75 77 80 74 72];
coeficientes = pol_hermite(tiempo,distancia,velocidad);
tgeneral = 0:1:13;
coeficientes_derivada = polyder(coeficientes);

disp("INCISO A")
data = zeros(length(coeficientes),1);
disp('La posicion del carro a los 10 sg es:')
posicion_10s = evalHorn(coeficientes,10,data);
posicion_10s
data = zeros(length(coeficientes_derivada),1);
disp('La velocidad del carro a los 10 sg es:')
velocidad_10s = evalHorn(coeficientes_derivada,10,data);
velocidad_10s

disp("\n")
disp("INCISO B")
%Para calcular la primera vez que la rapidez rebasa los 80.6 pies/s, se
%resuelve el valor mas pequeÃ±o de t en la ecuacion 80.6 = H(9)(x)', esto da
%que t =  5.6488
disp('Instante en que el auto supera el limite de velocidad de 80 pies por segundo:')
primera_vez = evalHorn(coeficientes_derivada,5.6488,data);
primera_vez
tiempo = 5.6488

disp("\n")
disp("INCISO C")
coeficientes_derivada = polyder(coeficientes);
coeficientes_segunda_derivada = polyder(coeficientes_derivada);
maxtiempo = (roots((coeficientes_segunda_derivada)));

data = zeros(length(coeficientes_segunda_derivada),1);
j = 1;
for i=1:length(maxtiempo)

    a = evalHorn(coeficientes_segunda_derivada,maxtiempo(i),data);
    if(a < 0)
       vectormenor(j) = maxtiempo(i);
       j = j+1;
    end
end
data = zeros(length(coeficientes_derivada),1);
maxVel = 0;
for i =1:length(vectormenor)
    auxVel =  evalHorn(coeficientes_derivada,vectormenor(i),data);
    if(auxVel>maxVel)
        maxVel = auxVel;
    end
end
disp('EL auto alcanza una velocidad maxima de :')
maxVel


%a) Para hallar este valor, hallamos el polinomio de hermite, para obtener 
%evaluar el tiempo dado y encontrar la distancia correspondiente. Luego, para 
%encontrar la velocidad, derivamos el polinomio de Hermite y evaluamos en su 
%derivada el punto dado, resultado. Obteniendo finalmente
%La posicion del carro a los 10 sg. Es : 742.5 pies.
%La velocidad del carro a los 10 sg. Es: 48.382 pies/sg.

%b) Para hallar el tiempo en el cual el automóvil sobrepasa el límite de 
%velocidad %resuelve el valor mas pequeÃ±o de t en la ecuacion 80.6 = H(9)(x)', 
%esto da que t =  5.6488. Primero transformamos las 50 millas/min a pies/seg, 
%lo cual equivale a 80.6667 pies/seg. Luego, evaluando varios numeros, 
% notamos que a los 5.5504 segundos aun no lo sobrepasaba, pero a los 5.550600e+000
% segundos si lo hacia  con un valor de (8.066686e+001), por lo que se recorrio el 
%intervalo entre estos dos numeros con un paso de 0.0001 segundos hasta que 
%encontrar el menor valor que  sobrepasara 80.6667, el cual resultó ser 5.550500e+000 
%segundos, instante en el que  alcanza una velocidad de 8.066674e+001 pies/seg.

%Con la segunda derivada igualada a 0 saco las raices que
%representan los minimos y los maximos, saco los que son
%menores a 0 que representan los maximo, y obtengo el mayor :
% 119.42 ft/sg y coincide con el pico de la grafica.
