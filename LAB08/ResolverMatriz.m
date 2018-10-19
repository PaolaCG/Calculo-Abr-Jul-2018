function [x] = ResolverMatriz(A,b)
% Calcula las matrices L (triangular inferior) y U (triangular inferior)
% de una matriz A, tal que A = LU, luego se resuelve el sistema Ax = b,
% donde b es la solución, resolvemos primero Ly = b, luego Ux = y,
% hallando la solucion x haciendo sustitucion hacia atrás y hacia adelante
% Entrada:   A = Matriz cuadrada, b = Vector de igualacion donde Ax = b
% Salida:    x = vector solucion
I= eye(length(A)); % Matriz identidad
U=A;
L=I;
n=length(A);
for k = 1:n-1
    for j = k+1:n
        L(j,k)=U(j,k)/U(k,k);
        for i = k:n
        U(j,i)=U(j,i)-(L(j,k)*U(k,i));
        end
    end
end
% Sustitucion hacia adelante para resolver Ly = b 
for i = 1:n
        sum = 0;
        for j = i-1:-1:1
            sum = sum + L(i,j)*y(j);
        end
        y(i) = (b(i) - sum)/L(i,i);
end
% Sustitucion hacia atrás para resolver Ux = y
for i = n:-1:1
    sum = 0;
    for j = i+1:n
        sum = sum + U(i,j)*x(j);
    end
    x(i) = (y(i) - sum)/U(i,i);
end
end