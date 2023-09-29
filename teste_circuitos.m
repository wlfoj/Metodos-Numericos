% Dados de exemplo
i = [0.4, 0.466, 0.515, 0.562, 0.66, 0.74, 0.92, 1.17, 1.61, 2.34];
razao = [0.836, 0.814, 0.794, 0.77, 0.736, 0.702, 0.62, 0.518, 0.326, 0];
% Crie o gráfico de linhas para y1 e y2
plot(i, razao, 'b');

% Adicione legendas aos elementos do gráfico
#legend('sen(x)', 'cos(x)');

% Defina um título para o gráfico
#title('Gráfico de sen(x) e cos(x)');

% Rotule os eixos
xlabel('Corrente (mA)');
ylabel('Potência dissipada / Poteência fornecida');

