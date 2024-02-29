X = [0; 1; 2; 3; 4; 5];
x = linspace(0, 5, 100);
Y = [0; 20; 60; 68; 77; 100];

# Mudar a linha do yp para yp = polinomio_generico(p, X) Se quiser o coef de determinação
# Mudar a linha do yp para yp = polinomio_generico(p, x) Se quiser plotar o gráfico

# 1º Grau
#p = reg_polinomial(X, Y, 1);
#yp = polinomio_generico(p, X);

# 2º Grau
#p = reg_polinomial(X, Y, 2);
#yp = polinomio_generico(p, X);
#yp

# 3º Grau
#p = reg_polinomial(X, Y, 3);
#yp = polinomio_generico(p, X);
#yp

# 4º Grau
#p = reg_polinomial(X, Y, 4);
#yp = polinomio_generico(p, X);
#yp

# 5º Grau
p = reg_polinomial(X, Y, 5);
yp = polinomio_generico(p, X);

% Criar o scatter plot
#figure;
#scatter(X, Y, 'o', 'filled', 'DisplayName', 'Pontos originais');
#hold on;

% Adicionar o segundo plot (linha)
#plot(x, yp, '-r', 'LineWidth', 1, 'DisplayName', 'Expressão obtida');

% Adicionar legendas e rótulos aos eixos
#legend('show');
#xlabel('Eixo X');
#ylabel('Eixo Y');
#title('Pontos da tabela e gráfico da expressão de ordem 5');

% Desligar o modo de retenção para evitar sobreposição acidental
#hold off;

# Calculando o coef de determinação
med_y = mean(Y);
nx = length(X);
Sr=0;
St=0;
for i=1:1:nx
  St = St + (y(i) - med_y)^2;
  Sr = Sr + (y(i) - yp(i))^2;
endfor
R2 = (St-Sr)/St;
printf("\n\n R2=%f\n", R2)
