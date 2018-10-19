%PAOLA CASTRO
%13-10248
%LAB06 ejercicio 4

disp('Para E=1')
A=[1,1,0;0,1,1;0,1,1];
[n m]=size(A);
[x,r,k] = potencia(A,ones(n,1),1000,10^-6);
mayor_autovalor=r
autovector_asociado=x
iteraciones=k
autovalores=eig(A)
maximo_matlab=max(autovalores);
Error_autovector=error_relativo(maximo_matlab,mayor_autovalor)

disp("\n")
disp('Para E=10^-2')
A=[1,1,0;0,1,10^-2;0,10^-2,1];
[n m]=size(A);
[x,r,k] = potencia(A,ones(n,1),1000,10^-6);
mayor_autovalor=r
autovector_asociado=x
iteraciones=k
autovalores=eig(A)
maximo_matlab=max(autovalores);
Error_autovector=error_relativo(maximo_matlab,mayor_autovalor)

disp("\n")
disp('Para E=10^-8')
A=[1,1,0;0,1,10^-8;0,10^-8,1];
[n m]=size(A);
[x,r,k] = potencia(A,ones(n,1),1000,10^-6);
mayor_autovalor=r
autovector_asociado=x
iteraciones=k
autovalores=eig(A)
maximo_matlab=max(autovalores);
Error_autovector=error_relativo(maximo_matlab,mayor_autovalor)

% Observamos que el numero de iteraciones k aumenta a medida que la entrada se 
% modifica, a medida que el numero E disminuye el numero de iteraciones aumenta
% esto sucede porque los autovalores tienden a parecerse y este metodo
% parte de que son todos distintos, de igual forma el error va a aumentando a
% medida de que E va siendo mas chico 