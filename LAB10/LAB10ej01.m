% PAOLA CASTRO
% 13-10248
% CALCULO NUMERICO /// LAB10 ejercicio 1

disp("EJERCICIO 1")
f = @(x) (sin(x.^2));
g = @(x) ((x).*2).*(cos((x).^2));

disp("INCISO 1: Graficando")
%%% lo que haremos sera calcular todos los intervalos que requiere 
% que se requiere, luego evaluamos la funcion f en los intervalos, procederemos
%%% a evaluar la funcion g, que es la derivada de la f, en los intervalos
%para hermite, Calculamos el polinomio de hermite, seguimos con evaluar los 
%polinomios obtenidos para luego proceder a graficarlos

intervalo17 = linspace(-pi,pi,17);
chebyshev17 = crear_ptos_Chebyshev(-pi,pi,17);
intervalo250 = linspace(-pi,pi,250);

fresultados_17 = f(intervalo17);
fresultados_chebyshev17 = f(chebyshev17);
fresultados_250 = f(intervalo250);

gresultados_17 = g(chebyshev17);

hermite_17ptos = hermite(chebyshev17,fresultados_chebyshev17,gresultados_17);

horner_hermite_15=NaN(250,1);

for i=1:250
  horner_hermite_15(i) = horner_hermite(hermite_17ptos,intervalo250(i),chebyshev17);
end

disp("\n")

hold on
title('Aproximacion por 17 puntos Hermite Vs Spline')
xlim([-pi,pi])
ylim([-1.5,1.5])
plot(intervalo17,fresultados_17,'sr')
xlim([-pi,pi])
ylim([-1.5,1.5])
plot(chebyshev17,fresultados_chebyshev17,'sg')
xlim([-pi,pi])
ylim([-1.5,1.5])
plot(intervalo250,horner_hermite_15,'-m')
xlim([-pi,pi])
ylim([-1.5,1.5])
plot(intervalo250,spline(intervalo17,fresultados_17,intervalo250),'--b')
xlim([-pi,pi])
ylim([-1.5,1.5])
legend("Funcion","Equidistantes","Chebyshev","Hermite","Spline Cubico")

disp("\n")
disp("INCISO 2")

% aca calculamos los puntos medios para cada intervalo, para luego calculamos el 
% error relativo
medios_cheb=puntos_medios(chebyshev17);

medios_equi=puntos_medios(intervalo17);
 
spline_medios=spline(intervalo17,fresultados_17,medios_equi);
fmedios_equi=f(medios_equi);
err_spline_inf = norm((fmedios_equi-spline_medios),inf)/norm(fmedios_equi,inf)
err_spline_1 = norm((fmedios_equi-spline_medios),1)/norm(fmedios_equi,1)
numero_min_digitos=1

fmedios_cheb=f(medios_cheb);
hermite_medios_cheby=NaN(16,1);
for j=1:16
  hermite_medios_cheby(j) = horner_hermite(hermite_17ptos,medios_cheb(j),chebyshev17);
end
err_hermite_inf = norm((fmedios_cheb-hermite_medios_cheby),inf)/norm(fmedios_cheb,inf)
err_hermite_1 = norm((fmedios_cheb-hermite_medios_cheby),1)/norm(fmedios_cheb,1)
numero_min_digitos=7

% finalmente podemos decir que el numero minimo de digitos con que se 
%aproxima a la solucion viene dado por, segun lo visto en clase, :
% error_relativo < 5*10^t, siendo t el numero de cifras significativas 
%con las que nos aproximamos. Ademas, se observo que la interpolacion 
%de hermite con puntos de chebyshev es mas ajustada que la obtenida 
% mediante splines cubicos.
