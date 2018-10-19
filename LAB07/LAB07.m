%%  LAB07 ejercicio 1
%%  PAOLA CASTRO 13-10248
%%  CALCULO NUMERICO

load('data.mat');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp("INCISO A")
n=length(yd)
disp('POLINOMIO de grado 5')
p5=polyfit(xd,yd,5)'
ECMT=sum((polyval(p5,xd)-yd).^2)/n

disp('POLINOMIO de grado 15')
p15=polyfit(xd,yd,15)'
ECMT=sum((polyval(p15,xd)-yd).^2)/n

disp('Para un polinomio de grado 20')
p20=polyfit(xd,yd,20)'
ECMT=sum((polyval(p20,xd)-yd).^2)/n

disp("\n");
disp('INCISO B')
disp("GRAFICAS")
x=linspace(min(xd),max(xd),1000);
disp('Polinomio De Grado 5')
figure;
plot(xd,yd,'.r');
title('Polinomio De Grado 5');
hold on
evalp5=polyval(p5,x);
plot(x,evalp5,'-b');
legend('Valores iniciales','Polinomio De Grado 5');
xlabel('Tiempo (Minutos)')
ylabel('Temperatura (Grados Celcius)')

disp("\n");
disp('POLINOMIO De Grado 15')
figure;
plot(xd,yd,'.r');
title('POLINOMIO De Grado 15');
hold on
plot(x,polyval(p15,x),'-b');
legend('Valores iniciales','Polinomio De Grado 15');
xlabel('Tiempo (Minutos)')
ylabel('Temperatura (Grados Celcius)')

disp("\n");
disp('POLINOMIO De Grado 20')
figure;
plot(xd,yd,'.r');
title('Polinomio De Grado 20');
hold on
plot(x,polyval(p20,x),'-b');
legend('Valores iniciales','Polinomio De Grado 20');
xlabel('Tiempo (Minutos)')
ylabel('Temperatura (Grados Celcius)')

disp("\n");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('INCISO C')
disp('Polinomio De Grado 15')
format long
disp('Para 4.5')
valor_temperatura = polyval(p15,4.5)

disp("\n");
disp('Para 5')
valor_temperatura = polyval(p15,5)

disp("\n");
disp('Para 5.5')
valor_temperatura = polyval(p15,5.5)
disp("\n");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('INCISO D')
p15(end)=p15(end)-36.612;
disp('Tiempo para alcanzar la temperatura a 36,612')
Tiempo=roots(p15);
Tiempo=tiempo(Tiempo,0,8)


