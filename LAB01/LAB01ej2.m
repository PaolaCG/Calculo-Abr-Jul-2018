%CALCULO NUMERICO
%LAB01
%PAOLA CASTRO 13-10248

figure
intervalo = (8*pi):0.01:(14*pi);
resultados_cos_Taylor=cos_Taylor(intervalo,51);
resultados_rcos=rcos(intervalo,51,1);
hold on
grid on
plot(intervalo,resultados_cos_Taylor,'-',intervalo,resultados_rcos,'--')
title('Ejercicio 2');
legend('iterativo','recursivo');
xlabel('entre [0,45) es constantemente 0 en y');
ylabel('Eje de Ordenadas');
axis([40 45]);

% INCISO C
disp("errores relativos")
fprintf('Para 2pi')
fprintf('\n')
cos_Taylor(2*pi,51)           
rcos(2*pi,51,1)               
fprintf('\n')
fprintf('Para 8pi')  
fprintf('\n')
cos_Taylor(8*pi,51)           
rcos(8*pi,51,1)               
fprintf('\n')
fprintf('Para 16pi')
fprintf('\n')
cos_Taylor(16*pi,51)         
rcos(16*pi,51,1)             
fprintf('\n')
% La aproximacion como serie de Taylor es mas exacta en un principio
% pero para numeros muy grandes al poseer un factorial acumula errores.
% La aproximacion recursiva utiliza un algebra sencilla pero.

% INCISO E
disp("con func modificadas")
fprintf('Para 2pi')
fprintf('\n')
cos_Taylor(6,51)           
rcos(6,51,1)               
fprintf('\n')
fprintf('Para 8pi')  
fprintf('\n')
cos_Taylor(12,51)          
rcos(12,51,1)              
fprintf('\n')
fprintf('Para 16pi')
fprintf('\n')
cos_Taylor(25,51)          
rcos(25,51,1)              
fprintf('\n')
% Los resultados mejoraron drasticamente, esto debido a que la parte entera,
% permitia que los datos de entrada fueran numeros entero mucho mas faciles
% de operar para el computador. Con lo cual se deduce que estos metodos son 
% inestables, pues pequenos cambios en la entrada pueden llegar a alterar,
% exponencialmente la salida.