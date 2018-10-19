%%  LAB08
%%  PAOLA CASTRO 13-10248
%%  CALCULO NUMERICO

disp("Inciso A")

f = @(x) (x.*(sin(x)))./((x.^2).+1);

xGeneral = -4*pi:0.1:4*pi;
n = length(xGeneral);
yGeneral = zeros(n,1);
for i = 1:n
    yGeneral(i) = (xGeneral(i)*sin(xGeneral(i)))/((xGeneral(i)*xGeneral(i)) + 1);
end

x10 = linspace(-4*pi, 4*pi, 10); 
x30 = linspace(-4*pi, 4*pi, 30);
x50 = linspace(-4*pi, 4*pi, 50); 
n10 = length(x10);
n30 = length(x30);
n50 = length(x50);
y10 = f(x10); 
y30 = f(x30);
y50 = f(x50);
%Calculamos los polinomios de Vandermonde
y10V1 = Vandermonde(x10,y10,xGeneral);
y30V1 = Vandermonde(x30,y30,xGeneral);
y50V1 = Vandermonde(x50,y50,xGeneral);
%Calculamos los polinomios de Vandermonde para buscar los coeficientes
vandermond_10=vander(x10); 
vandermond_30=vander(x30);
vandermond_50=vander(x50);
# Calculamos el vector solucion
coef10=vandermond_10\y10' 
coef30=vandermond_30\y30'
coef50=vandermond_50\y50'
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp("Inciso B")
%Calculamos el polinomio de Lagrange de 10 puntos
yL10 = zeros(1,n);
for i = 1:n
    yL10(i) = neville(x10,y10,xGeneral(i));
end
%Calculamos el polinomio de Lagrange de 30 puntos
yL30 = zeros(1,n);
for i = 1:n
    yL30(i) = neville(x30,y30,xGeneral(i));
end
%Calculamos el polinomio de Lagrange de 50 puntos
yL50 = zeros(1,n);
for i = 1:n
    yL50(i) = neville(x50,y50,xGeneral(i));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp("Inciso C: Graficas")
% Grafica de polinomio en 10 puntos
subplot(3,1,1)
hold on
grid on
plot(x10,y10,'*b') % Nube de 10 puntos a graficar
plot(xGeneral,yGeneral,'-y') %Grafica de la funcion original
plot(xGeneral,yL10,'r') % Grafica del polinomio de Lagrange
plot(xGeneral,y10V1,'-g') % Grafica del polinomio de Vandermonde
title('Polinomio evaluado en 10 puntos')
xlabel('x')
ylabel('y')
legend('Puntos','Funcion original','Lagrange','Vandermonde')
axis([-4*pi 4*pi -1 1]);
% Grafica de polinomios en 30 puntos
subplot(3,1,2)
hold on
grid on
plot(x30,y30,'*b') % Nube de 30 puntos a graficar
plot(xGeneral,yGeneral,'-y') %Grafica de la funcion original
plot(xGeneral,yL30,'r') % Grafica del polinomio de Lagrange
plot(xGeneral,y30V1,'-g') % Grafica del polinomio de Valdermonde
title('Polinomio evaluado en 30 puntos')
xlabel('x')
ylabel('y')
legend('Puntos','Funcion original','Lagrange','Vandermonde')
%xis(-4*pi,4*pi,-1,1);
axis([-4*pi 4*pi -1 1]);
% Grafica de polinomio de 50 puntos
subplot(3,1,3)
hold on
grid on
plot(x50,y50,'*b') % Nube de 50 puntos a graficar
plot(xGeneral,yGeneral,'-y') %Grafica de la funcion original
plot(xGeneral,yL50,'r') % Grafica del polinomio de Lagrange
plot(xGeneral,y50V1,'-g') % Grafica del polinomio de Valdermonde
% No graficaremos Valdermonde debido a que está mal condicionado y da
% una gráfica incorrecta
title('Polinomio evaluado en 50 puntos')
xlabel('x')
ylabel('y')
legend('Puntos','Funcion original','Lagrange','Vandermonde')
axis([-4*pi 4*pi -1 1]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp("Inciso D")
x1 = -6.1333
x2 = -1.4142
%Aproximamos f(?6.1333) y f(?1.4142) usando el polinomio de 50 puntos de
%Lagrange
y1L = polyval(yL50,x1);
y2L = polyval(yL50,x2);
display('Aproximacion de f(?6.1333) por el polinomio de 50 puntos de Lagrange')
display(y1L)
display('Aproximacion de f(?1.4142) por el polinomio de 50 puntos de Lagrange')
display(y2L)
%Aproximamos f(?6.1333) y f(?1.4142) usando el polinomio de 50 puntos de
%Lagrange
y1V = polyval(y50V1,x1);
y2V = polyval(y50V1,x2);
display('Aproximacion de f(?6.1333) por el polinomio de 50 puntos de Vandermonde')
display(y1V)
display('Aproximacion de f(?1.4142) por el polinomio de 50 puntos de Vandermonde')
display(y2V)
%Hallamos el valor de real de f(-6.1333) y f(-1.4142)
y1 = (x1*sin(x1))/((x1*x1) + 1);
y2 = (x2*sin(x2))/((x2*x2) + 1);

%Calculamos los errores relativos 
errorL1 = abs(y1-y1L)/abs(y1);
errorL2 = abs(y2-y2L)/abs(y2);
errorV1 = abs(y1-y1V)/abs(y1);
errorV2 = abs(y2-y2V)/abs(y2);
display('El error relativo de la aproximacion de f(-6.1333) por Lagrange')
display(errorL1)
display('El error relativo de la aproximacion de f(-1.4142) por Lagrange')
display(errorL2)
display('El error relativo de la aproximacion de f(-6.1333) por Vandermonde')
display(errorV1)
display('El error relativo de la aproximacion de f(-1.4142) por Vandermonde')
display(errorV2)




