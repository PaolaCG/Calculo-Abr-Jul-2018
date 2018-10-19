function [x,autovector_alejado,iteraciones] = potencia_desplazado(A,x,miu,maxiter,tol)
  [n m]=size(A);
  I=eye(n);
  for iteraciones=1:maxiter
    y=(A-miu*I)*x;
    autovector_alejado=fi(y)/fi(x);
    normalizado=y/norm(y,inf);
    if norm(x-normalizado,inf)<tol
      autovector_alejado=autovector_alejado+miu;
      return
    end
    x=normalizado;
  end