f = @(x) 4.62-1.7 -2.13*x + 0.42*(x^2) -0.03*(x^3) ;

a=2;
b=3;
erro = 10^(-4);
N =100;
bisseccao(a, b, erro, N, f)
