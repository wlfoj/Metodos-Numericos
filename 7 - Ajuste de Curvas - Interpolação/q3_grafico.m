% Definir as quatro funções
f1 = @(x) 0.62*(x.^2) + 1.93*x + 1;
f2 = @(x) -5.6*(x.^2) + 5.2*x + 1.3;

% Definir valores de x
x = 0:0.1:1;

% Calcular os valores das funções
y1 = f1(x);
y2 = f2(x);

% Plotar o gráfico com legendas
figure;
plot(x, y1, 'r', 'LineWidth', 2);
hold on;
plot(x, y2, 'b', 'LineWidth', 2);
legend('Equação da questão 01', 'Equação da questão 02');
title('Gráfico da Questão 3');
grid on;
hold off;

