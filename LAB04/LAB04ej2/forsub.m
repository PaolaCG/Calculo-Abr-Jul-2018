function [y] = forsub(L,b)

[m n]= size(L);
if m~=n 
  error('Matriz del sistema no cuadrada')
end
n = length(b);
if m~= n
  error ('sistema no coherente')
end
y  = zeros(n,1); 
y(1) = b(1) / L(1,1);
for k = 2:n
    y(k) = (b(k) - L(k,1:k-1)*y(1:k-1))/L(k,k);
end