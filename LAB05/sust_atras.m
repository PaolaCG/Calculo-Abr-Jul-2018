function x = sust_atras(U,y)
  [n m]=size(U);

  x=zeros(n,1);
  x(n)=y(n)/U(n,n);
  iter = 0;
  for i=n-1:-1:1
    suma=0;
    for j=i+1:n
      suma=suma+U(i,j)*x(j);
      iter=iter+1;
    end
    x(i)=(y(i)-suma)/U(i,i);
  end
  iter