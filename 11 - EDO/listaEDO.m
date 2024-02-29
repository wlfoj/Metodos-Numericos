% # 1) =======================================================
% a = 0; b = 2; y0 = 1; h = 0.5;
% f = @(y, x) y.*(x.^3) - 1.5.*y;


% analitica = @(x) e.^(((x.^4)/4) - 1.5.*x);
% x = a:0.5:b;
% x2 = a:0.25:b;
% y_analitica = analitica(x);

% printf("Pro método de Euler com h = 0.5\n");
% yeuler_5 = euler (a, b, 0.5, y0, f);
% printf("------------------------------------------------------------------------\n");

% printf("Pro método de Euler com h = 0.25\n");
% yeuler_25 = euler (a, b, 0.25, y0, f);
% printf("------------------------------------------------------------------------\n");

% printf("Pro método do Ponto Médio com h = 0.5\n");
% ymedio_5 = ponto_medio (a, b, 0.5, y0, f);
% printf("------------------------------------------------------------------------\n");

% printf("Pro método de Rk de 3ª ordem clássico com h = 0.5\n");
% yrk3_5 = rk_3_classico (a, b, 0.5, y0, f);
% printf("------------------------------------------------------------------------\n");

% printf("Pro método de Rk de 4ª ordem clássico com h = 0.5\n");
% yrk4_5 = rk_4_classico (a, b, 0.5, y0, f);
% printf("------------------------------------------------------------------------\n");

% figure
% plot(x, y_analitica, x, yrk4_5, x, yrk3_5, x, ymedio_5, x, yeuler_5, x2, yeuler_25  );
% legend('Solução Analítica', '4ª Ordem clássico', '3ª Ordem Clássico', 'Ponto médio', 'Euler h=0,5', 'Euler h=0,25')
% title("Comparação entre os métodos")

# 2) =======================================================
% a = 0; b = 1; y0 = 1; h = 0.25;
% f = @(y, x) (1+4.*x).*sqrt(y);

% analitica = @(x) x.^4 + x.^3 + 2.*x.^2 + x + 1;
% x = a:h:b;
% y_analitica = analitica(x);

% printf("Pro método de Eulercom h = 0.25\n");
% yeuler = euler (a, b, h, y0, f);
% printf("------------------------------------------------------------------------\n");

% printf("Pro método de Ralston com h = 0.25\n");
% yralston = rk_2_ralston (a, b, h, y0, f);
% printf("------------------------------------------------------------------------\n");

% printf("Pro método de Heun com h = 0.25\n");
% yheun = euler_heun (a, b, h, y0, f);
% printf("------------------------------------------------------------------------\n");

% printf("Pro método de Rk de 3ª ordem clássico com h = 0.25\n");
% yrk3 = rk_3_classico (a, b, h, y0, f);
% printf("------------------------------------------------------------------------\n");

% printf("Pro método de Rk de 4ª ordem clássico com h = 0.25\n");
% yrk4 = rk_4_classico (a, b, h, y0, f);
% printf("------------------------------------------------------------------------\n");

% figure
% plot(x, y_analitica, x, yrk4, x, yrk3, x, yheun, x, yralston, x, yeuler  );
% legend('Solução Analítica', 'RK 4ª Ordem clássico', 'RK 3ª Ordem Clássico', 'Euler Heun', 'Ralston', 'Euler')
% title("Comparação entre os métodos")


# 3) =======================================================
% a = 0; b = 2; y0 = 1; h = 0.5;

% f = @(y, x) -2*y + (x^2);
% x = a:h:b;

% printf("Pro método de Ralston com h = 0.5\n");
% yralston = rk_2_ralston (a, b, h, y0, f);
% printf("------------------------------------------------------------------------\n");

% printf("Pro método de Heun com h = 0.5\n");
% yheun = euler_heun (a, b, h, y0, f);
% printf("------------------------------------------------------------------------\n");

% printf("Pro método de Heun com critério Es = 0,001 e com h = 0.5\n");
% yheunconv =  heun_conv (a, b, h, y0, f, 0.1/100);
% printf("------------------------------------------------------------------------\n");

% printf("Pro método do Ponto Médio com h = 0.5\n");
% ymedio = ponto_medio (a, b, h, y0, f);
% printf("------------------------------------------------------------------------\n");

% figure
% plot(x, yheun, x, yheunconv, x, ymedio, x, yralston );
% legend('Heun sem iteração', 'Heun com es<0.1%', 'Ponto Médio', 'Ralston')
% title("Comparação entre os métodos")

# 4) =======================================================
% t = [1950 1955 1960 1965 1970 1975 1980 1985 1990 1995 2000];
% p = [2560 2780 3040 3350 3710 4090 4450 4850 5280 5690 6080];
% kg = 0.0194
% f = @(y, x) kg*y;

% t2 = 1950:5:2050;
% y4 = rk_4_questao4 (f);

% figure
% plot(t2, y4);
% hold on
% scatter(t,p);
% legend('Método RK 4ª ordem', 'Dados originais')

# 5) =======================================================


h = [6 5 4 3 2 1 0];
g = 9.8; d = 0.25; ee = 1; y0 = 6;
passo = 1; a = 0; b = 80000;

A = @(h) (0.1943*h  - 0.0457)*10^4;
f = @(h, t) -(((pi*d^2)/(4*A(h)))*(sqrt(2*g*(h+ee))));

y = rk_4_questao4 (a, b, passo, f);
x = a:passo:b;

plot(x, y);
xlabel('Tempo (s)')
ylabel('Altura do reservatório')
