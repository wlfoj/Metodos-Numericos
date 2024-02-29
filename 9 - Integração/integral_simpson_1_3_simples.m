# Função para calculo numérico de integração seguindo a regra de Simpson 1/3 Simples
# X0: limite inferior de integração.
# Xn: limite superior de integração.
# f: função a ser integrada.

function retval = integral_simpson_1_3_simples (f, X0, Xn)
  h = (Xn - X0)/2;
  soma = f(X0) + (4*f(X0+h)) + f(Xn);
  retval = (h/3)*(soma);
  #printf("O resultado da integral da função f é %f\n", retval);
endfunction
