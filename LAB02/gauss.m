% Funci�n que aplica la eliminaci�n del m�todo Gauss
% con o sin pivote que devuelve una matriz triangular superior
function solucion = gauss(A,b,metodo)
  % con pivote
  if metodo == 1
    solucion = gauss_pivot(A,b);
  end
  % sin pivote
	if metodo == 0
    solucion = gaussiana(A,b);
  end