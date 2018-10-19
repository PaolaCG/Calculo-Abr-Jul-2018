function solucion = autovalores(A)
  A=abs(eig(A));
  max=max(A);
  min=min(A);
  solucion=[max,min];