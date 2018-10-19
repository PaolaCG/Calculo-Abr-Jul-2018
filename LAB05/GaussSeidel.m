function x = GaussSeidel(A,b,x0,maxiter,tol)
  [n,m]=size(A);
  x=NaN+ones(n,1);
  iter=0;
  for k=1:maxiter
    for i=1:n
      suma1=0;
      for j=1:i-1
        suma1=suma1+A(i,j)*x(j);
        iter=iter+1;
      end
      suma2=0;
      for j=i+1:n
        suma2=suma2+A(i,j)*x0(j);
        iter=iter+1;
      end
      x(i)=(b(i)-suma1-suma2)/A(i,i);
    end
    if norm(x0-x,inf)<tol
      k
      iter
      return 
    end
    x0=x;
  end

%%% (D_E)x(k+1) = Fx(k)+b si nos da lla matriz de iteracion SI resolvemos por 
%sustitucion hacia adelante
%
%mi gauss seidel de manera matricial 
% CONSTRUIT JACOBI, GAUSS SEIDEL MATRICIALMENTE
% D=diag(A)
% E=-tril(A-1)
% F=-triu(A,1)
%Jacobi(A,b,zeros(11,1), 1e-11, 1500)
%GaussSeidel(A,b,zeros(11,1), 1e-11, 1500)
%b1=B(:,1)
