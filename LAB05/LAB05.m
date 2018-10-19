%PAOLA CASTRO
%13-10248
%LAB05 


load('datos20.mat');
[n,m]=size(A);
a = A(1:n,1:n);
b1 = B(1:n,1);
b2 = B(1:n,2);
b3 = B(1:n,3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('RADIOS ESPECTRALES')
disp('Jacobi')
D=diag(diag(a));
L=tril(a,-1);
U=triu(a,1);
M=(inv(D))*(L+U);
disp(max(abs(eig(M))))
disp('Gauss Seidel')
M=-1*(inv(L+D));
M=M*U;
disp(max(abs(eig(M))))

% Primero resolvemos el sistema con Gauss Seidel con vector inicial
% de zeros 
disp("\n")
disp('TIEMPOS')
disp("\n")
disp('PARA VECTOR DE 0')
%%%%%%%%%%%%%%%%%%%%%%%
disp('Gausseidel para x1')
tiempo=cputime;
x1=GaussSeidel(a,b1,zeros(n,1),1500,10^-5);
fprintf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo)
%%%%%%%%%%%%%%%%%%%%%%%
disp('Gausseidel para x2')
tiempo=cputime;
x2=GaussSeidel(a,b2,zeros(n,1),1500,10^-5);
fprintf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo)
%%%%%%%%%%%%%%%%%%%%%%%
disp('Gausseidel para x3');
tiempo=cputime;
x2=GaussSeidel(a,b3,zeros(n,1),1500,10^-5);
fprintf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo)

% Primero resolvemos el sistema con Gauss Seidel con vector inicial
% de ones 

disp("\n")
disp('PARA VECTOR DE 1')
%%%%%%%%%%%%%%%%%%%%%%%
disp('Gausseidel para x1')
tiempo=cputime;
x1=GaussSeidel(a,b1,ones(n,1),1500,10^-5);
fprintf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo)
%%%%%%%%%%%%%%%%%%%%%%%
disp('Gausseidel para x2')
tiempo=cputime;
x2=GaussSeidel(a,b2,ones(n,1),1500,10^-5);
fprintf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo)
%%%%%%%%%%%%%%%%%%%%%%%
disp('Gausseidel para x3');
tiempo=cputime;
x3=GaussSeidel(a,b3,ones(n,1),1500,10^-5);
fprintf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo)
disp("\n")
disp('LU');
LUnueva(a,b1,b2,b3);
%El tiempo se calcula en la funcion LUnueva.