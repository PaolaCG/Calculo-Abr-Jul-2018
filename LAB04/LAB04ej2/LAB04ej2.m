%PAOLA CASTRO 13-10248
%LAB04
%EJERCICIO 2

clear all
clc
format long

A1=[1.012,-2.132,3.1041;-2.132,4.096,-7.013;3.1040,-7.013,0.014];
b1 = [1.984;-5.049;-3.895];

A2 = [6,2,1,-1;2,4,1,0;1,1,4,-1;-1,0,-1,3];
b2= [0.0;7.0;-1.0;-2.0];
V1 = eig(A1);
n1 = size(V1);
n1 = n1(1);
V2 = eig(A2);
n2 = size(V2);
n2 = n2(1);
k = 0;

disp("PARA EL PRIMER SISTEMA");
for i =1:n1
    if V1(i) < 0
       display('El autovalor de la matriz A1 es negativo: ')
       display(V1(i))
       display('No se le puede aplicar el metodo de cholesky a A1')
       k = 1;
       break;
    end
end
if k == 1
    display('Se procedera a aplicar LU a A1: ')
    [x1,L1,U1] = LU(A1,b1);
    display('La matriz L de A1 es:')
    display(L1)
       display('La matriz U de A1 es:')
    display(U1)
       display(' La solucion del sistema de la matriz A1 es:')
    display(x1)
else
    display('La matriz A1 es definida positiva.')
    display('Se procedera a aplicar Cholesky a A1: ')
    L1 = cholesky(A1);
    display('La matriz L de la matriz A1')
    display(L1)
    display(' La solucion del sistema de la matriz A1 es:')
    x1 = LUR(L1,L1',b1);
    display(x1)
end

disp("\n");
disp("\n");

disp("PARA EL SEGUNDO SISTEMA");
k = 0;
for i =1:n2
    if V2(i) < 0
       display('El autovalor de la matriz A2 es negativo: ')
       display(V2(i))
       display('No se le puede aplicar el metodo de cholesky a A2')
       k = 1;
       break;
    end
end
if k == 1
    display('Se procedera a aplicar LU a A2: ')
    [x2,L2,U2] = LU(A2,b2);
    display('La matriz L de A2 es:')
    display(L2)
       display('La matriz U de A2 es:')
    display(U2)
       display(' La solucion del sistema de la matriz A2 es:')
    display(x2)
else
    display('La matriz A2 es definida positiva.')
    display('Se procedera a aplicar Cholesky a A2: ')
    L2 = cholesky(A2);
    display('La matriz L de la matriz A2')
    display(L2)
    display(' La solucion del sistema de la matriz A2 es:')
    x2 = LUR(L2,L2',b2);
    display(x2)
end

% La matriz 2 podria admitir una descomposicion de Cholesky ya
% que es simetrica, pero no necesariamente por ser simetrica tiene que ser
% positiva definida, sin embargo es un gran candidato. La matriz 2 no
% puedo asegurar nada a simple vista para saber si admite positiva
% definida. Tambien uno podria decir que los elementos de la diagonal si
% son positivos podria aplicar cholesky, porque si alguno es negativo el
% algoritmo me arrojaria un error, esto es muy util para matrices muy
% grandes que no podria sacarle los autovalores.
% Utiliando el comando de Matlab eig para sacar los autovalores de
% la matriz, se observa que la matriz 1 tiene autovalores negativos por
% ende no es positiva definida ya que no cumple con la condicion de que
% todos los autovalores tengan que ser positivas definidas, sin embargo
% la matriz 2 si tiene todos sus autovalores positivos y ahora si podemos
% afirmar que la matriz 2 es definida positiva y admite una
% descomposicion de cholesky.
