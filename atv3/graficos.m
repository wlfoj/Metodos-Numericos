### PARA QUESTÃO 2
#q = 2*10^(-5);
#Q = 2*10^(-5);
#eo = 8.9*10^(-12);
#a = 0.85;


# Função original
#f = @(x) ((1/(4*pi*(eo)))*(q)*(Q)*x)/((x^2+a^2)^(2/3)) - 1.25;
# Função derivada primeira
#df = @(x) ((q*Q)/(4*pi*eo))*(((-3/9)*x^2)+0.7225)/(((x^2)+0.7225)^(5/3));
# Função encontrada para aplicar na Iteração Linear
#g = @(x) 1.25*(4*pi*(eo))*((x^2+a^2)^(2/3))/(Q*q);

#y = metodo_secante (f, 0, 0.5, 10^(-4), 100)
#x = [1:5];

#plot(x, y);
% Adicionando um título ao gráfico
#title("Gráfico de convergência para Metodo da Secante");

% Adicionando rótulos aos eixos
#xlabel("iterações");
#ylabel("xr");

# Função original
f = @(x) (32/(1+(31*e^(-0.09*x)))) -9.6*e^(-0.05*x) - 13.2 ;
# Primeira derivada da função
df = @(x) 0.48*e^(-0.05*x)+((89.2*e^(-0.09*x))/((31*e^(-0.09*x))+1)^2);
# g(x) encontrada para aplicar na Iteração Linear
g = @(x) log(((32/(9.6*e^(-0.05*x)+13.2))-1)/31)/(-0.09);

y = metodo_secante (f, 32, 36, 10^(-4), 100)
x = [1:3];

plot(x, y);
% Adicionando um título ao gráfico
title("Gráfico de convergência para Metodo da Secante");
% Adicionando rótulos aos eixos
xlabel("iterações");
ylabel("xr");
