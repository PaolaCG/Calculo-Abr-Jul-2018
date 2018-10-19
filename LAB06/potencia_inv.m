function [x,autovector_minimo,iteraciones] = potencia_inv(A,x,maxiter,tol)
  [L,U]=LU(A);
  for iteraciones=1:maxiter

    y=sust_adelante(L,x);
    y=sust_atras(U,y);
    autovector_minimo=fi(y)/fi(x);
    normalizado=y/norm(y,inf);
    if norm(x-normalizado,inf)<tol
      autovector_minimo=1/autovector_minimo;
      return
    end
    x=normalizado;
  end
  autovector_minimo=1/autovector_minimo;