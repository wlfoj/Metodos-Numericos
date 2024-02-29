################################### QUESTÃO 2 ###################################
f = @(x) 8 + 4*cos(x);
original = 16.5664;
##### ================================================================= #####
printf("\nSAÍDAS NÚMERICAS PARA QUESTÃO 2-C\n");
printf("Para n=2\n");
n = 2;
obtido = integral_trapezio (n, f, 0, pi/2);
printf("O valor obtido aplicando o método foi %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n", ER);

printf("Para n=4\n");
n = 4;
obtido = integral_trapezio (n, f, 0, pi/2);
printf("O valor obtido aplicando o método foi %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n\n\n", ER);


##### ================================================================= #####
printf("\nSAÍDAS NÚMERICAS PARA QUESTÃO 2-D\n");
obtido = integral_simpson_1_3_simples (f, 0, pi/2);
printf("O valor obtido aplicando o método foi %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n\n\n", ER);


##### ================================================================= #####
printf("\nSAÍDAS NÚMERICAS PARA QUESTÃO 2-E\n");
printf("Para n=4\n");
n = 4;
obtido = integral_simpson_1_3_compostaV2 (n, f, 0, pi/2);
printf("O valor obtido aplicando o método foi %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n\n\n", ER);


##### ================================================================= #####
printf("\nSAÍDAS NÚMERICAS PARA QUESTÃO 2-F\n");
obtido = integral_simpson_3_8_simples (f, 0, pi/2);
printf("O valor obtido aplicando o método foi %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n\n\n", ER);

################################### QUESTÃO 3 ###################################
printf("\n\n\n\n\n\n\n");
f = @(x) 1 - x - (4)*(x^3) + (2)*(x^5);
original = 1104;
X0 = -2;
Xn = 4;
##### ================================================================= #####
printf("\nSAÍDAS NÚMERICAS PARA QUESTÃO 3-B\n");
n = 1;
obtido = integral_trapezio (n, f, X0, Xn);
printf("O valor obtido aplicando o método foi %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n", ER);

##### ================================================================= #####
printf("\nSAÍDAS NÚMERICAS PARA QUESTÃO 3-C\n");
printf("Para n=2\n");
n = 2;
obtido = integral_trapezio (n, f, X0, Xn);
printf("O valor obtido aplicando o método foi %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n", ER);

printf("Para n=4\n");
n = 4;
obtido = integral_trapezio (n, f, X0, Xn);
printf("O valor obtido aplicando o método foi %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n\n\n", ER);


##### ================================================================= #####
printf("\nSAÍDAS NÚMERICAS PARA QUESTÃO 3-D\n");
obtido = integral_simpson_1_3_simples (f, X0, Xn);
printf("O valor obtido aplicando o método foi %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n\n\n", ER);


##### ================================================================= #####
printf("\nSAÍDAS NÚMERICAS PARA QUESTÃO 3-E\n");
printf("Para n=4\n");
n = 4;
obtido = integral_simpson_1_3_compostaV2 (n, f, X0, Xn);
printf("O valor obtido aplicando o método foi %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n\n\n", ER);


##### ================================================================= #####
printf("\nSAÍDAS NÚMERICAS PARA QUESTÃO 3-F\n");
obtido = integral_simpson_3_8_simples (f, X0, Xn);
printf("O valor obtido aplicando o método foi %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n\n\n", ER);
