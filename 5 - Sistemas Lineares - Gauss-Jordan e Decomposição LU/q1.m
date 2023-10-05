b = [3;1;0];
A = [-0.04 0.04 0.12; 0.56 -1.56 0.32; -0.24 1.24 -0.28];
i = [1 0 0; 0 1 0; 0 0 1];

[x, INV] = gaus_jordan(A,b,i);

printf("Os valores dos parametros encontrados foram:\n");
printf("x1=%f,  x2=%f,  x3=%f \n", x(1), x(2), x(3));
printf("\nA matriz inversa de A é:\n");
disp(INV);
