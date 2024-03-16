# Coeficientes
Vmax = 1.5;
R0 = 0.5;
n = 8;
m = 1 #???????

res_integral = zeros(1,50);

# Função a ser integrada
integral = @(r) r*((1-(r/R0))^(1/n));

# Simples
#res_integral = integral_simpson_3_8_simples (integral, 0, R0);
#res_integral = integral_simpson_1_3_simples (integral, 0, R0);
# Compostas
i = 1;
for m=1:1:50
  res_integral(i) = integral_trapezio (m, integral, 0, R0);
  i= i+1;
endfor
#res_integral = integral_simpson_1_3_compostaV2 (m, integral, 0, R0); # deve ser par

# calculo final que utiliza a integral para obter o
#printf("O termo que não muda é: %f\n", ((2*Vmax)/(R0^2)));
Vmed = ((2*Vmax)/(R0^2))*res_integral;
#printf("O resultado da integral é %f\nA velocidade média é %f\n", res_integral, Vmed);



m=1:1:50
figure;  % Cria uma nova figura

plot(m, res_integral, 'r', 'LineWidth', 1');  % Plota f(x) em vermelho
hold on;  % Mantém o gráfico atual para adicionar mais curvas
plot(m, Vmed, 'b', 'LineWidth', 1);  % Plota g(x) em azul

% Adicione título e legendas
title('Gráfico para regra do trapézio');
xlabel('n');  % Rótulo do eixo x
legend('Resultado da Integral', 'Velocidade média');  % Adiciona uma legenda
% Crie o gráfico
