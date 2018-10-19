%PAOLA CASTRO 13-10248
%PREGUNTA 1

clear all
clear clc
format long

%#####################################################
% INCISO A
intervalo = -3:0.01:3; %NOS PIDEN GRAFICAR EN INTERVALO -3,3
for i = 1:length(intervalo)
f(1,i) = (1 - cos(intervalo(1,i))) / intervalo(1,i)^2;
end
plot(intervalo,f,'mp')
hold on

%da 0.7
%#####################################################
% INCISO B
x = 1.2*10^(-8);
f1 = (1 - cos(x)) / x^2;
display('con cos(x): ')
display(f1)

%#####################################################
% INCISO C
x1 = 1.2*10^(-8);
f2 = (1/2) * (sin(x1/2)/(x1/2))^2;
display('con sin(x): ')
display(f2)
c = norm(f1,2) - norm(f2,2);
display('diferencia entre las funciones: ')
display(c)
hold off

%CONLUSIONES
    %INCISO B
% vemos que aqui podriamos tener un error de cancelacion, pues en
% valores como el 0 o en valores cercanos a este el coseno se aproxima muchisimo
% a 1 y al esto ocurrir se obtendra un valor demasiado pequeño en el numerador
% (esta cantidad puede ser 0 cuando x sea 0, pues cos(0)=1 y 1-cos(0)=0) 
% Entonces el error se da porque en mi numerador tengo la resta de dos numeros 
% muy parecidos y esto me puede dar cero (un numero muy muy cercano a el)
% Por otro lado, tengo division entre un numero muy pequeño, asi que tambien
% puedo tener un error. Es por todo esto que el resultado no da el numero 
% esperado (0.5, segun la grafica)

    %INCISO C 
% Al reescribirse la formula nos da como resultado 0.5 cuando se evalua, este es 
% el valor esperado, pues en este caso evadimos la resta y no tenemos un numero 
% tan pequeno en el denominador. Nuestro error de cancelacion desaparece pues 
% aplicamos las propiedades para el seno y el coseno (1-cos = sen(x/2)) y asi 
% eliminar la resta. Ademas el error de division se elimina pues no hay error 
% que se  amplifique.