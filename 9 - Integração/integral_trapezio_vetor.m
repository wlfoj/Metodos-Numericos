# Função para calculo numérico de integração seguindo a regra dos trapézios
# X0: limite inferior de integração.
# Xn: limite superior de integração.
# n: numero de seguimentos.
# f: função a ser integrada.

function retval = integral_trapezio_vetor (n, vetor_x, vetor_y)
  #printf("Regra do trapézio   m=%d;  X0=%f;    Xn=%f\n");
  len = length(vetor_y);
  if n == 0
    printf("Divisão por zero\n");
    return;
  elseif n < 0
    printf("Intervalo inválido\n");
    return;
  else
    soma = ((vetor_x(len) - vetor_x(1))/2)*(vetor_y(len) + vetor_y (1));

    #for i=2:1:len
    #    tmp = ((vetor_x(i) - vetor_x(i-1))/2)*(vetor_y(i) + vetor_y (i-1));
    #    printf("((%f - %f)/2)*(%f + %f) = %f\n", vetor_x(i), vetor_x(i-1), vetor_y(i), vetor_y (i-1), tmp);
    #    soma = soma + tmp;
    #endfor

endif
  #printf("(%f/2)*(%f + %f + (2*%f))\n", h, f(X0), f(Xn), soma);
  retval = soma;
  #printf("O resultado da integral da função f é %f\n", retval);
endfunction
