## Ordem 1 Newton
x = [ 0.75, 1.25];
f = [ -0.6, 0.7];
xx = 1.15;
o=1;
printf("Polinômios interpoladores de Newton de grau%d\n", o);
printf("Vetor x =");
disp(x)
printf("\nVetor y =");
disp(f)
printf("\nPonto analisado x=%f\n", xx);
inter_newton (x, f, xx, o);
printf("\n");

## Ordem 2 Newton
x = [0.75, 1.25, 1.5];
f = [-0.6, 0.7, 1.88];
xx = 1.15;
o=2;
printf("===================================================\n");
printf("Polinômios interpoladores de Newton de grau%d\n", o);
printf("Vetor x =");
disp(x)
printf("\nVetor y =");
disp(f)
printf("\nPonto analisado x=%f\n", xx);
inter_newton (x, f, xx, o);
printf("\n");

## Ordem 3 Newton
x = [0.75, 1.25, 1.5, 2];
f = [-0.6, 0.7, 1.88, 6];
xx = 1.15;
o=3;
printf("===================================================\n");
printf("Polinômios interpoladores de Newton de grau%d\n", o);
printf("Vetor x =");
disp(x)
printf("\nVetor y =");
disp(f)
printf("\nPonto analisado x=%f\n", xx);
inter_newton (x, f, xx, o);
printf("\n");

## Ordem 4 Newton
x = [0.25, 0.75, 1.25, 1.5, 2];
f = [-0.45, -0.6, 0.7, 1.88, 6];
xx = 1.15;
o=4;
printf("===================================================\n");
printf("Polinômios interpoladores de Newton de grau%d\n", o);
printf("Vetor x =");
disp(x)
printf("\nVetor y =");
disp(f)
printf("\nPonto analisado x=%f\n", xx);
inter_newton (x, f, xx, o);
printf("\n");

printf("Com base se aumenta o grau do polinomio a variação do termo, em relação ao polinomiode grau anterioro, é menor\n");
