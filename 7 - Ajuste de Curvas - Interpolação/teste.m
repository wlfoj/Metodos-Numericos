% Definir as quatro funções
f1 = @(x) exp(x) + sin(x);
f2 = @(x) 0.62*(x.^2) + 1.93*x + 1;
#f3 = @(x) exp(x);
#f4 = @(x) cos(x);

% Definir valores de x
x = 0:0.1:1;

% Calcular os valores das funções
y1 = f1(x);
y2 = f2(x);
#y3 = f3(x);
#y4 = f4(x);

% Plotar o gráfico com legendas
figure;
plot(x, y1, 'r', 'LineWidth', 2);
hold on;
plot(x, y2, 'g', 'LineWidth', 2);
#plot(x, y3, 'b', 'LineWidth', 2);
#plot(x, y4, 'm', 'LineWidth', 2);
#legend('$x^2$', '$\sin(x)$', '$\exp(x)$', '$\cos(x)$', 'Interpreter', 'latex', 'Location', 'best');
legend('e^x + sin(x)', '0.62*(x^2) + 1.93*x + 1');
title('Gráfico da Questão 1');
grid on;
hold off;

