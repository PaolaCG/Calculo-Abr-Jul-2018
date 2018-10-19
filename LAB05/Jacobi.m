%PAOLA CASTRO
%13-10248
%LAB05 

% A -> Matriz del sistema
%	b -> vector del lado derecho
% x0 -> vector inicial/ x viejo
% tol -> tolerancia
% maxiter -> numero maximo de iteraciones
%	x -> vector solucion, x=nuevo
% ite -> numero de iteraciones
% error -> error relativo estimado con respecto a la norma infinito

function x = Jacobi(A,b,x0,tol,maxiter)
[n,m]=size(A);
x=NaN*ones(n,1);
iter = 0;
for iter=0:maxiter
  for i=1:n
    suma1=0.0;
    for j=1:i-1
      suma1=suma1+A(i,j)*x0(j);
      iter=iter+1;
    end
    suma2=0.0;
    for j=i+1:n
      suma2=suma2+A(i,j)*x0(j);
      iter=iter+1;
    end
    x(i) = (b(i) - suma1 - suma2)/A(i,i);
  end
  if norm(x0 - x,inf) < tol
    disp("converge JACOBI")
    k
    iter   
   return
  end
   x0 = x;
end




%E=triangular inferior negativa tril
%F=triangular superior negativa triu

%D=diag(A)
%E=-tril(A,-1)
%F=triu(A, -1)



% d-1(e+f)= MATRIZ DE ITERACION H
% si norm(H)<1 la matriz converge hacer preferiblemente con normal infinito
% se le calcula el radio espectral de H, si es menor que la normal de H
% siempre va a converger.
% A=D-E-F
% definir un x=0 hay que tener un k=0 para maximo de iteraciones

