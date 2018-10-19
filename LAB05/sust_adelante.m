function y = sust_adelante(L,b)
  [n m]=size(L);

  y=zeros(n,1);
  y(1)=b(1)/L(1,1);
  iter = 0;

  for i=2:n
    suma=0;
    for j=1:i-1
      suma=suma+L(i,j)*y(j);
      iter=iter+1;
    end
    y(i)=(b(i)-suma)/L(i,i);
  end
  iter