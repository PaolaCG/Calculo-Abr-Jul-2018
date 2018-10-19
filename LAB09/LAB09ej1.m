% PAOLA CASTRO
% 13-10248
% CALCULO NUMERICO /// LAB09 ejercicio 1


disp('INCISO A');
puntosx = -4*pi:0.01:4*pi;
for k=1:length(puntosx);
    puntosy(k) = funcion(puntosx(k));
end

puntosx30 = linspace(-4*pi,4*pi,30);
puntosy30 = zeros(1,30);
for i = 1:30;
    puntosy30(1,i) = funcion(puntosx30(1,i));
end
coef1 = newton(puntosx30,puntosy30);
for k=1:length(puntosx);
    polinomio1N(k) = hnewton(coef1,puntosx30,puntosx(k));
end

puntosx50 = linspace(-4*pi,4*pi,50);
puntosy50 = zeros(1,50);
for i = 1:50;
    puntosy50(1,i) = funcion(puntosx50(1,i));
end
coef2 = newton(puntosx50,puntosy50);
for k=1:length(puntosx);
      polinomio2N(k) = hnewton(coef2,puntosx50,puntosx(k));
end

disp('INCISO B');

puntosx15 = linspace(-4*pi,4*pi,15);
puntosyDc15 = zeros(1,15);
for i = 1:15;
    puntosy15(1,i) = funcion(puntosx15(1,i));
end
for i = 1:15;
    puntosyD15(1,i) = fderivada(puntosx15(1,i));
end
coefH1 = hermite(puntosx15,puntosy15,puntosyD15);
for k=1:length(puntosx);
      polinomio1H(k) = hhermite(coefH1,puntosx15,puntosx(k));
end


puntosyD25 = zeros(1,25);
puntosx25 = linspace(-4*pi,4*pi,25);
for i = 1:25;
    puntosy25(1,i) = funcion(puntosx25(1,i));
end
for i = 1:25;
    puntosyD25(1,i) = fderivada(puntosx25(1,i));
end
coefH2 = hermite(puntosx25,puntosy25,puntosyD25);
for k=1:length(puntosx);
      polinomio2H(k) = hhermite(coefH2,puntosx25,puntosx(k));
end

disp('INCISO C');

% Newton con Chebyshev
puntosxc = -4*pi:0.01:4*pi;
for k=1:length(puntosxc);
    puntosyc(k) = funcion(puntosxc(k));
end
puntosxc30 = chebyshev(-4*pi,4*pi,30);
puntosyc30 = zeros(1,30);
for i = 1:30;
    puntosyc30(1,i) = funcion(puntosxc30(1,i));
end
coefc1 = newton(puntosxc30,puntosyc30);
for k=1:length(puntosx);
    polinomio1Nc(k) = hnewton(coefc1,puntosxc30,puntosxc(k));
end

puntosxc50 = chebyshev(-4*pi,4*pi,50);
puntosyc50 = zeros(1,50);
for i = 1:50;
    puntosyc50(1,i) = funcion(puntosxc50(1,i));
end
coefc2 = newton(puntosxc50,puntosyc50);
for k=1:length(puntosxc);
      polinomio2Nc(k) = hnewton(coefc2,puntosxc50,puntosxc(k));
end

% Hermite con Chebyshev
puntosxc15 = chebyshev(-4*pi,4*pi,15);
puntosyDc15 = zeros(1,15);
for i = 1:15;
    puntosyc15(1,i) = funcion(puntosxc15(1,i));
end
for i = 1:15;
    puntosyDc15(1,i) = fderivada(puntosxc15(1,i));
end
coefcH1 = hermite(puntosxc15,puntosyc15,puntosyDc15);
for k=1:length(puntosx);
      polinomio1cH(k) = hhermite(coefcH1,puntosxc15,puntosx(k));
end

puntosyDc25 = zeros(1,25);
puntosxc25 = chebyshev(-4*pi,4*pi,25);
for i = 1:25;
    puntosyc25(1,i) = funcion(puntosxc25(1,i));
end
for i = 1:25;
    puntosyDc25(1,i) = fderivada(puntosxc25(1,i));
end
coefcH2 = hermite(puntosxc25,puntosyc25,puntosyDc25);
for k=1:length(puntosx);
      polinomio2cH(k) = hhermite(coefcH2,puntosxc25,puntosx(k));
end

disp('INCISO D: GRAFICAS');
% Puntos equidistantes
figure(1)
subplot(4,2,[1,2]);
hold on
plot(puntosx,puntosy,'r',puntosx,polinomio1N,puntosx30,puntosy30,'sk')
axis([-4*pi 4*pi -1 1])
legend('Funcion original', 'Aproximacion via polinomio de Newton de 30 puntos equidistantes', 'puntos de interpolacion')
subplot(4,2,[3,4]);
hold on
plot(puntosx,puntosy,'r',puntosx,polinomio2N,puntosx50,puntosy50,'sk')
axis([-4*pi 4*pi -1 1])
legend('Funcion original', 'Aproximacion via polinomio de Newton de 50 puntos equidistantes', 'puntos de interpolacion')
subplot(4,2,[5,6]);
hold on
plot(puntosx,puntosy,'r',puntosx,polinomio1H,puntosx15,puntosy15,'sk')
axis([-4*pi 4*pi -1 1])
legend('Funcion original', 'Aproximacion via polinomio de Hermite de 15 puntos equidistantes', 'puntos de interpolacion')
subplot(4,2,[7,8]);
hold on
plot(puntosx,puntosy,'r',puntosx,polinomio2H,puntosx25,puntosy25,'sk')
axis([-4*pi 4*pi -1 1])
legend('Funcion original', 'Aproximacion via polinomio de Hermite de 25 puntos equidistantes', 'puntos de interpolacion')


% Puntos de Chebyshev
figure(2)
subplot(4,2,[1,2]);
hold on
plot(puntosxc,puntosyc,'r',puntosxc,polinomio1Nc,puntosxc30,puntosyc30,'sk')
axis([-4*pi 4*pi -1 1])
legend('Funcion original', 'Aproximacion via polinomio de Newton de 30 puntos Chebyshev', 'puntos de interpolacion')
subplot(4,2,[3,4]);
hold on
plot(puntosxc,puntosyc,'r',puntosxc,polinomio2Nc,puntosxc50,puntosyc50,'sk')
axis([-4*pi 4*pi -1 1])
legend('Funcion original', 'Aproximacion via polinomio de Newton de 50 puntos Chebyshev', 'puntos de interpolacion')
subplot(4,2,[5,6]);
hold on
plot(puntosx,puntosy,'r',puntosx,polinomio1cH,puntosxc15,puntosyc15,'sk')
axis([-4*pi 4*pi -1 1])
legend('Funcion original', 'Aproximacion via polinomio de Hermite de 15 puntos Chebyshev', 'puntos de interpolacion')
subplot(4,2,[7,8]);
hold on
plot(puntosx,puntosy,'r',puntosx,polinomio2cH,puntosxc25,puntosyc25,'sk')
axis([-4*pi 4*pi -1 1])
legend('Funcion original', 'Aproximacion via polinomio de Hermite de 25 puntos Chebyshev', 'puntos de interpolacion')


%% INCISO E
% Se registro que el polinomio interpolante de Newton presenta el mismo
% problema de osciliacion a medida que se aumentan los puntos de
% aproximacion tal cual como el polinomio interpolante de Lagrange. Para
% Hermite se registraron mejores aproximaciones a la funcion con menos
% cantidad de puntos, aunque el hecho de utilizar los puntos de forma
% equidistintes trae el incoveniente que el polinomio oscile demasiado y
% que incluso no sea capaz de aproximar en algunos puntos, en este sentido
% se presenta el mismo dilema del laboratorio anterior a la hora de decidir
% que polinomio interpola mejor para puntos equidistantes. Dejando a un
% lado este fenomeno comun en las aproximaciones polinomicas se puede
% afirmar que Hermite es mejor polinomio interpolante que Newton, con una
% menor cantidad de puntos se logro aproximar la funcion de manera muy
% precisa en el intervalo de -5 a 5, para una aproximacion igual de buena
% que Hermite, Newton necesito duplicar la cantidad de puntos.

% En teoria se mostro que las aproximaciones con puntos de Chebyshev son
% mas estable que con puntos equidistantes. Con los ejercicios realizados
% se confirma este hecho pues los distintos polinomios utilizados no
% prensentan las oscilaciones registradas con puntos equidistantes. En este
% sentido la aproximacion con puntos de Chebyshev ya es mas precisa que la 
% de puntos  equidistantes pues si logra aproximar sin oscilaciones en el
% intervalo de 10 a -5 y de 5 a 10, intervalos donde puntos equidistantes
% tenian serios problemas de oscilacion. Se observa que se mantiene la
% propiedad de que Hermite necesita menos cantidad de puntos que Newton para
% aproximar de forma precisa a la funcion original.

% Por ultimo el polinomio de Hermite intenta evitar el fenomeno de Runge
% (presentado en Newton al oscilar demasiado) por lo que interpolar los valores
% de la funcion y su derivada no eliminan por completo este fenomeno pero
% si es capaz de minizarlo de una manera considerble, por lo que es claro
% que utilizar informacion de la derivada si mejora la aproximacion.

