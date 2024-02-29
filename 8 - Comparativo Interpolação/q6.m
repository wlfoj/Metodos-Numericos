f = @(x) 0.2715-0.85  +0.0063*(x^3) - 0.08643*(x^2) + 0.4118*x ;

a=2;
b=3;
printf("Avaliado no intervalo [%d, %d]\n", a, b);
erro = 10^(-4);
N =100;
bisseccao(a, b, erro, N, f)




