# Função para calculo numérico de integração seguindo a regra dos trapézios
# X0: limite inferior de integração.
# Xn: limite superior de integração.
# n: numero de seguimentos.
# f: função a ser integrada.

function retval = integral_trapezio (n, f, X0, Xn)
  #printf("Regra do trapézio   m=%d;  X0=%f;    Xn=%f\n");
  if n == 0
    printf("Divisão por zero\n");
    return;
  elseif n < 0
    printf("Intervalo inválido\n");
    return;

  else
    h = (Xn - X0)/n;
    #printf("h=%f\n", h); ######
    x = X0 + h;
    soma = 0;
    for i=1 : n-1
      #printf("f(%f)=%f\n",x, f(x));#####
      soma = soma + f(x);
      x = x + h;
    endfor

endif
  #printf("(%f/2)*(%f + %f + (2*%f))\n", h, f(X0), f(Xn), soma);
  retval = (h/2)*(f(X0)+ f(Xn) + (2*soma));
  #printf("O resultado da integral da função f é %f\n", retval);
endfunction
