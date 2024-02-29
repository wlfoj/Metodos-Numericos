% Definir as quatro funções
f1 = @(x) 2.6*(x.^2) - 3.9*x + 1.3;
f2 = @(x) -10*(x.^2) + 10*x;
f3 = @(x) 1.8*(x.^2) - 0.9*x;
f4 = @(x) -5.6*(x.^2) + 5.2*x + 1.3;

% Definir valores de x
x = 0:0.1:1;

% Calcular os valores das funções
y1 = f1(x);
y2 = f2(x);
y3 = f3(x);
y4 = f4(x);

% Plotar o gráfico com legendas
figure;
plot(x, y1, 'r', 'LineWidth', 2);
hold on;
plot(x, y2, 'g', 'LineWidth', 2);
plot(x, y3, 'b', 'LineWidth', 2);
plot(x, y4, 'm', 'LineWidth', 2);
legend('T1(x)', 'T2(x)', 'T3(x)', 'P2(x)');
title('Gráfico da Questão 2');
grid on;
hold off;

