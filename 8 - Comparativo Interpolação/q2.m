## Ordem 1 Newton
x = [ 3, 5];
f = [5.5, 40];
xx = 4;
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
x = [3, 5, 6];
f = [5.5, 40, 82];
xx = 4;
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
x = [ 2, 3, 5, 6];
f = [4, 5.5, 40, 82];
xx = 4;
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
x = [1, 2, 3, 5, 6];
f = [7, 4, 5.5, 40, 82];
xx = 4;
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
