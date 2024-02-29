% f = @(y) (200 - 400*y);
% a = 0;
% b = 0.2;
% h = 0.0001
% x = a:h:b;

% y_euler = euler(0, 0.02, 0.0001, 0, f);
% y_heun = euler_heun(0, 0.02, 0.0001, 0, f);
% y_ponto_medio = ponto_medio(0, 0.02, 0.0001, 0, f);


% figure
% plot(x, y_euler, x, y_heun, x, y_ponto_medio);
% legend('Euler', 'Heun', 'Ponto Médio')
% xlabel('Tempo (s)')
% ylabel('Corrente (A)')






f = @(y, x) 200 - 400*y;
i_analitica = @(t) -((1/2)*exp(-400*t)) + (1/2);
t = 0:0.0001:0.02;

y_analitica = i_analitica(t);
y_ralston = rk_2_ralston(0, 0.02, 0.0001, 0, f);
y_3classico = rk_3_classico(0, 0.02, 0.0001, 0, f);
y_4classico = rk_4_classico(0, 0.02, 0.0001, 0, f);

figure
plot(t, y_analitica, t, y_ralston, t, y_3classico, t, y_4classico);
legend('Solução Analítica', '2ª Ordem Ralston', '3ª Ordem Clássico', '4ª Ordem Clássico')
xlabel('Tempo (s)')
ylabel('Corrente (A)')