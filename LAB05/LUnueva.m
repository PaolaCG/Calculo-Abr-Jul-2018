%x1,x2,x3 para resolver 3 sistemas de ecuaciones, uno por cada columna de la matriz B
function [x1,x2,x3] = LUnueva(A,b1,b2,b3)
  
  tiempo=cputime;

  [n m]=size(A);

  iter=0;

  for k=2:n
    for i=k:n
      A(i,k-1)=A(i,k-1)/A(k-1,k-1);
      for j=k:n
        A(i,j)=A(i,j)-(A(i,k-1)*A(k-1,j));
        iter=iter+1;
      end
    end
  end

  L=tril(A,-1)+eye(n);
 
  U=triu(A);
 
% PARA B1
  y=sust_adelante(L,b1);
  x1 = sust_atras(U,y); 
% PARA B2
  y=sust_adelante(L,b2);
  x2 = sust_atras(U,y);
% PARA B3
  y=sust_adelante(L,b3);
  x3 = sust_atras(U,y);
  iter 
  fprintf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo);

% mostramos el tiempo que toma resolver con el metodo uno de los vectores,
% de resolver el sistema para cada bi, seria este mismo tiempo y las iteraciones
% son las mismas  en los 3 casos al igual que la factorizacion
