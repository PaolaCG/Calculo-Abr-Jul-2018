function [ValoresY] = Vandermonde(x,y,t)

% Matriz de Vandermonde. Es una función que recibe un vector x con los
% puntos dados y retorna los valores y, que son los puntos x evaluados en
% el polinomio de interpolacion Vandermonde

n = length(x);

% Generamos la matriz de Vandermonde
for i = 1:n
    V(i,1) = 1;
    for j = 2:n
        V(i,j) = x(i)^(j-1);
    end
end

% Resolvemos el sistema V*sol = y donde "sol" es la solucion
[sol] = ResolverMatriz(V,y);
% El polinomio de interpolacion de Vandermonde es: 
coef = sol(length(sol): -1:1); % Invertimos la posicion de los coeficientes de "sol"
% para poder usar el polyval de matlab en el polinomio de interpolacion
%coef = polyfit(x',y,n);

ValoresY = polyval(coef,t); % Evaluamos los valores t en el polinomio Pn de Vandermonde para
% encontrar los valores de y
%end