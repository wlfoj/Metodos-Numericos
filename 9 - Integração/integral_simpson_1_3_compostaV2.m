# Função para calculo numérico de integração seguindo a regra de Simpson 1/3 Compoosta
# X0: limite inferior de integração.
# Xn: limite superior de integração.
# n: numero de seguimentos.
# f: função a ser integrada.

function retval = integral_simpson_1_3_compostaV2 (n, f, X0, Xn)
  if n == 0
    printf("Divisão por zero\n");
    return;
  elseif n < 0
    printf("Intervalo inválido\n");
    return;
  elseif mod(n, 2) != 0
    printf("n deve ser par\n");
    return;
  else
    h = (Xn - X0)/n;
    soma = 0;
    # OK
    x = X0;
    for i=1 : n +1

      # Se é o primeiro ou último termo
      if i == 1 || i == n+1
        #printf("Inicial 1*");
        soma = soma + f(x);
      # Se for par
      elseif mod(i, 2) == 0
        #printf("Par 4*");
        soma = soma + 4*f(x);
      # Se for impar
      else
        #printf("Impar 2*");
        soma = soma + 2*f(x);
      endif
      #printf(" f(%d)=%d\n---", x, f(x));
      x = x + h; # Atualiza o x
    endfor
  #printf("A soma deu %d\n", soma);
  endif
  retval = (h/3)*(soma);
  #printf("O resultado da integral da função f é %f\n", retval);
endfunction
