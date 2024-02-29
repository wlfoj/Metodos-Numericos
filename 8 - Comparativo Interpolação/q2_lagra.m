## Ordem 1 Lagrange
x = [ 3, 5];
f = [5.5, 40];
xx = 4;
o=1;
printf("===================================================\n");
printf("Polinômios interpoladores de Lagrange de grau%d\n", o);
printf("Vetor x =");
disp(x)
printf("\nVetor y =");
disp(f)
printf("\nPonto analisado x=%f\n", xx);
inter_lagran (x, f, xx, o);


## Ordem 2 Lagrange
x = [3, 5, 6];
f = [5.5, 40, 82];
xx = 4;
o=2;
printf("===================================================\n");
printf("Polinômios interpoladores de Lagrange de grau%d\n", o);
printf("Vetor x =");
disp(x)
printf("\nVetor y =");
disp(f)
printf("\nPonto analisado x=%f\n", xx);
inter_lagran (x, f, xx, o);
printf("\n");

## Ordem 3 Lagrange
x = [ 2, 3, 5, 6];
f = [4, 5.5, 40, 82];
xx = 4;
o=3;
printf("===================================================\n");
printf("Polinômios interpoladores de Lagrange de grau%d\n", o);
printf("Vetor x =");
disp(x)
printf("\nVetor y =");
disp(f)
printf("\nPonto analisado x=%f\n", xx);
inter_lagran (x, f, xx, o);


## Ordem 4 Lagrange
x = [1, 2, 3, 5, 6];
f = [7, 4, 5.5, 40, 82];
xx = 4;
o=4;
printf("===================================================\n");
printf("Polinômios interpoladores de Lagrange de grau%d\n", o);
printf("Vetor x =");
disp(x)
printf("\nVetor y =");
disp(f)
printf("\nPonto analisado x=%f\n", xx);
inter_lagran (x, f, xx, o);

printf("Com base se aumenta o grau do polinomio a variação do termo, em relação ao polinomiode grau anterioro, é menor\n");
