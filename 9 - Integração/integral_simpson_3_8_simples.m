# Função para calculo numérico de integração seguindo a regra de Simpson 3/8 Simples
# X0: limite inferior de integração.
# Xn: limite superior de integração.
# f: função a ser integrada.

function retval = integral_simpson_3_8_simples (f, X0, Xn)
  h = (Xn - X0)/3;
  soma = f(X0) + 3*(f(X0+h) + f(X0 +2*h)) + f(Xn);
  retval = 3*(h/8)*(soma);
  #printf("O resultado da integral da função f é %f\n", retval);
endfunction
