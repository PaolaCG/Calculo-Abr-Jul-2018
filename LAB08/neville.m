function [puntosY] = neville(x,y,t) 
%Funcion que evalua y determina el polinomio de Lagrange a partir del
%algoritmo de neville
n = length(x);
% Calculamos y = f(x), los puntos x evaluados en la funcion f
%for i = 1:n
%    y(i) = (x(i)*sin(x(i)))/((x(i)*x(i)) + 1);
%end
% Colocamos el vector y = f(x) en la primera columna de Q, 
% esto es la transpuesta de y
for i = 1:n
    Q(i,1) = y(i);
end

% Calculo del polinomio de Lagrange
    for i = 2:n
        for j = 2:i
            Q(i,j) = ((t - x(i-j+1))*Q(i,j-1) - (t - x(i))*Q(i-1,j-1))/(x(i)-x(i-j+1));
        end
    end
    puntosY = Q(n,n); % Q(n,n) es el polinomio de grado n de Lagrange,
    % en este caso estamos evaluando directamente todos los puntos t en ese
    % polinomio de grado n y almacenandolos en el vector "PuntosY"
end
% puntosY será un vector donde estarán guardados los puntos y = f(x) para
% cada valor de x dado

