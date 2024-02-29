# Função para integração numérica seguindo a regra dos trapézios
# X0: limite inferior de integração.
# Xn: limite superior de integração.
# n: numero de seguimentos.
# f: função a ser integrada.
function retval = trapezio (n, f, X0, Xn)
  if n == 0
    printf("Divisão por zero\n");
    return;
  elseif n < 0
    printf("Intervalo inválido\n");
    return;

  else
    h = (Xn - X0)/n;
    printf("h=%f\n", h); ######
    x = X0 + h;
    soma = 0;
    for i=1 : n-1
      printf("f(%f)=%f\n",x, f(x));#####
      soma = soma + f(x);
      x = x + h;
    endfor

  endif
  retval = h*(((f(X0)+ f(Xn))/2) + soma);
  printf("O resultado da integral da função f é %f\n", retval);
endfunction


