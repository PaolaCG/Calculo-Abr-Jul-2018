function [x,autovector_cercano,iteraciones] = potencia_inv_despl(A,x,miu,maxiter,tol)
  [n m]=size(A);
  I=eye(n);
  A=A-(miu*I);
  [L,U]=LU(A);
  for iteraciones=1:maxiter

    y=sust_adelante(L,x);
    y=sust_atras(U,y);
    autovector_cercano=fi(y)/fi(x);
    normalizado=y/norm(y,inf);
    if norm(x-normalizado,inf)<tol
      autovector_cercano=(1/autovector_cercano)+miu;
      return
    end
    x=normalizado;
  end
  autovector_cercano=(1/autovector_cercano)+miu;