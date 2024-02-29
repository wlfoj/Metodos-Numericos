## Ordem 1 Newton
x = [30000, 60000];
f = [9.7487, 9.6879];
xx = 55000;
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
x = [30000, 60000, 90000];
f = [9.7487, 9.6879, 9.6278];
xx = 55000;
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
x = [0, 30000, 60000, 90000];
f = [9.81, 9.7487, 9.6879, 9.6278];
xx = 55000;
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

printf("Como apenas os valores 9.69 aparecem em todos os polinômios, o resultado teria 2 digitos significativos após a virgula\n");
