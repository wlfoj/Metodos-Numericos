#g = @(x) (1- (e^(-x)));
#f = @(x) (1 + (x^2))^(-0.5);
f = @(x) 0.2 + 25*x - 200*(x.^2) + 675*(x.^3) - 900*(x.^4) + 400*(x.^5);

X0=0;
Xn=0.8;
n = 100;

printf("f(X0)=%f\n", f(X0));
printf("f(Xn)=%f\n\n", f(Xn));

res = integral_trapezio (n, f, X0, Xn);
printf("O resultado pelo trapezio: %f\n", res);
res = integral_simpson_3_8_composta_V2(n, f, X0, Xn);
printf("O resultado pelo simpson 3/8 composto: %f\n", res);
#res = integral_simpson_3_8_simples(f, X0, Xn);
#printf("O resultado pelo simpson 3/8 simples: %f\n", res);
