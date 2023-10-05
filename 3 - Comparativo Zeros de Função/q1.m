f = @(x) (32/(1+(31*e^(-0.09*x)))) -9.6*e^(-0.05*x) - 13.2 ;
df = @(x) 0.48*e^(-0.05*x)+((89.2*e^(-0.09*x))/((31*e^(-0.09*x))+1)^2);

### METODOS DE QUEBRA - FECHADOS
printf("Para a Falsa Posição\n");
falsa_pos(f, 32, 38, 10^(-4), 100)
printf("####################################################\n");
printf("Para a Bisseção\n");
bisseccao(f, 32, 38, 10^(-4), 100)
printf("####################################################\n");

### METODOS ABERTOS
#g = @(x) log(((32/(9.6*e^(-0.05*x)+13.2))-1)/31)/(-0.09);
#printf("Para a Iteração Linear\n");
#iteracao_linear (g, f, 38, 10^(-4), 100)
#printf("####################################################\n");
#printf("Para a Newton Raphson\n");
#newton_rapshon(f, df, 38, 10^(-4), 100)
#printf("####################################################\n");
#printf("Para a Metodo da Secante\n");
#metodo_secante (f, 32, 36, 10^(-4), 100)
#printf("####################################################\n");
