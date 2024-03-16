## SCRIPT PARA RESPONDER A QUESTÃO NO VERSO DA ATIVIDADE

f = @(x) (-9.2*exp(-x))+tan(0.1*x);

# Derivada de f(x)
df = @(x) 9.2*exp(-x) + 0.1*(sec(0.1*x))^2;

g = @(x) x - (f(x)/df(x));
# obtendo o valor da raiz para g(x)
iteracao_linear(g, 0, 10^(-4), 100, f)



h = 0.001;
## Calculado a estimativa da derivada pela diferença finita no ponto x=3
estimativa_em_3 = (f(3+h)-f(3))/h;
printf("A estimativa da derivada para f'(3) = %d \n", estimativa_em_3);
printf("O valor real de f'(3)=%d\n",df(3));

## Calculado a estimativa da derivada pela diferença finita no ponto x=4
estimativa_em_4 = (f(4+h)-f(4))/h;
printf("A estimativa da derivada para f'(4) = %d \n", estimativa_em_4);
printf("O valor real de f'(4)=%d\n",df(4));
