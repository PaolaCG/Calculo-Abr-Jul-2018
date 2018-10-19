%Evalua un polinomio en la forma de Horner
%coef: coeficientes del polinomio
%b: vector solucion
%data: data original, si es Horner es un vector de ceros.
%retorna la evaluacion del polinomio.
function [salida] = evalHorn(coef,puntos,data)
  tam = length(coef);
  for j=1:length(puntos)
      aux = 0;
      for i = 1 :1 : tam
            aux = aux*(puntos(j)-data(tam-i+1)) + coef(i);
      end
      salida(j) = aux;
  end
end


