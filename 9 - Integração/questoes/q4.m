f = @(x) exp(-x);
original = 0.6988;
X0 = 0;
Xn = 1.2;
n = 1;
##### ================================================================= #####
printf("\nSAÍDAS NÚMERICAS PARA QUESTÃO 4-B\n");
obtido = integral_trapezio (n, f, X0, Xn);
printf("O valor obtido aplicando o método foi %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n\n\n", ER);


##### ================================================================= #####
printf("\nSAÍDAS NÚMERICAS PARA QUESTÃO 4-C\n");
printf("Aplicando a regra do trapézio no intervalor [0, 0.1]\n");
r1 = integral_trapezio (n, f, 0, 0.1);
printf("O resultado foi %f\n", r1);
printf("Aplicando a regra do Simpson no intervalor [0.1, 0.3]\n");
r2 = integral_simpson_1_3_simples (f, 0.1, 0.3);
printf("O resultado foi %f\n", r2);
printf("Aplicando a regra do trapézio no intervalor [0.3, 0.5]\n");
r3 = integral_trapezio (n, f, 0.3, 0.5);
printf("O resultado foi %f\n", r3);
printf("Aplicando a regra do Simpson no intervalor [0.5, 0.7]\n");
r4 = integral_simpson_1_3_simples (f, 0.5, 0.7);
printf("O resultado foi %f\n", r4);
printf("Aplicando a regra do trapézio no intervalor [0.7, 0.95]\n");
r5 = integral_trapezio (n, f, 0.7, 0.95);
printf("O resultado foi %f\n", r5);
printf("Aplicando a regra do Simpson no intervalor [0.95, 1.2]\n");
r6 = integral_simpson_1_3_simples (f, 0.95, 1.2);
printf("O resultado foi %f\n", r6);

obtido = r1+r2+r3+r4+r5+r6;
printf("A combinação da rergra do trapézio com simpson deu o seguinte resultado: %f\n", obtido);

ER = abs((original-obtido)/original)*100;
printf("O erro relativo percentual é %f%% \n\n\n", ER);
