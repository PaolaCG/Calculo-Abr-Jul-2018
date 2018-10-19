function [x,autovector_maximo,iteraciones] = potencia(A,x,maxiter,tol)
  for iteraciones=1:maxiter
    y=A*x;
    autovector_maximo=fi(y)/fi(x);
    normalizado=y/norm(y,inf);
    if norm(x-normalizado,inf)<tol
      return
    end
    x=normalizado;
  end