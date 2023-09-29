## Questão 2 FEITA

q = 2*10^(-5);
Q = 2*10^(-5);
eo = 8.9*10^(-12);
a = 0.85;

# Função original
f = @(x) ((q*Q*x/(4*pi*(eo))))*(1/(x^2+a^2)^(2/3)) - 1.25;


# Função derivada primeira
df = @(x) ((q*Q)/(4*pi*eo))*(((-3/9)*x^2)+0.7225)/(((x^2)+0.7225)^(5/3));

### METODOS DE QUEBRA - FECHADOS
printf("Para a Falsa Posição\n");
falsa_pos(f, 0.2, 0.5, 10^(-4), 100)
printf("####################################################\n");
printf("Para a Bisseção\n");
bisseccao(f, 0, 0.5, 10^(-4), 100)
printf("####################################################\n");

### METODOS ABERTOS
g = @(x) 1.25*(4*pi*(eo))*((x^2+a^2)^(2/3))/(Q*q);
#printf("Para a Iteração Lienar\n");
#iteracao_linear (g, f, 0.5, 10^(-4), 100)
#printf("####################################################\n");
#printf("Para a Newton Raphson\n");
#newton_rapshon(f, df, 0.5, 10^(-4), 100)
#printf("####################################################\n");
#printf("Para a Metodo da Secante\n");
#metodo_secante (f, 0, 0.5, 10^(-4), 100)
#printf("####################################################\n");
