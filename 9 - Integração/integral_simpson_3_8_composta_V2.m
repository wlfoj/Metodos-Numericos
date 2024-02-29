



function retval = integral_simpson_3_8_composta_V2 (n, f, X0, Xn)
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
    h = (Xn - X0)/(3*n);
    #printf("h=%f\n", h);
    x = X0:h:Xn;
    y = f(x);
    soma = 0;
    for i=1 : n
      #printf("A soma = %f    em i=%d\n", soma, i);
      soma = soma + y(3*i-2) + 3*y(3*i-1) + 3*y(3*i) + y(3*i+1);
    endfor
   endif
   retval = 3*(h/8)*(soma);

endfunction
