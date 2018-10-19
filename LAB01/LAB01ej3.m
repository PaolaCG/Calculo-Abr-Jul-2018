%PAOLA CASTRO 13-10248
%PREGUNTA 3

X = [ 10000000000 ;  10000000001 ; 10000000002 ];

%#####################################################
n = length(X);
xbarra = (sum(X))/n;
suma = 0;
for i=1:1:n
    suma = suma + (X(i)-xbarra)^2;
end
var1 = (1/(n-1))*suma;

display('varianza Formula 1: ')
display(var1)
%#####################################################


n1 = 0;
for i=1:1:n
    n1 = n1 + X(i)^2;
end
suma = n1 - (1/n)*(sum(X)^2); 
var2 = (1/(n-1))*suma;
display('varianza Formula 2: ')
display(var2)

%CONCLUSIONES
    %INCISO A
% Aqui hacemos la implementacion de la primera formula donde la varianza
% nos da    
%                   var1=1

    %INCISO B
% Realizamos la implementacion de la segunda formula y obtenemos que
% nuestra segunda varianza es
%                   var2 =  32768

% observamos que nuestras varianzas difieren. Esto sucede porque la varianza
% real v1 es muy pequena en comparacion con los valores del vector X,
% ademas, cuando se va a calcular el valor de V2, las cifran son de
% magnitudes muy grandes y al restarse estas cifras se cometen errores ya
% que el computador no puede representar su valor real pues es un cifra de
% gran magnitud. Esyo sucede porque en la segunda varianza tengo numeros muy 
% grandes elevados al cuadrado y opero un numero muy grande mas uno muy pequeño,
% al hacer esto el compurador toma en cuenta el numero "grande" e ignora (pues 
% "no ve") al numero las pequeno