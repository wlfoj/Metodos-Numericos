
function retval = newton_rapshon (f, df, xo, e, N)
  retval = zeros(1, 3);

  printf("x0=%d,  e=%d,  N=%d \n",xo,e,N);
  xn = xo;
  ##### Exibindo a evolução - Header da tabela
  fprintf("n    |  xprox  |   xr    |   ea   |  f(xprox)  \n");
  for n=1:N
    xprox = xn - (f(xn)/df(xn));
    ea = abs((xprox-xn)/xprox);
    retval(n) = xprox;
    if  ea < e
      ##### Exibindo a evolução
      fprintf("%d    |%f|%f|%f|%f\n", n,xprox,xn,ea, f(xprox));
      #####
      printf("A raíz é %d, encontrado na %d iteração\n", xprox, n);
      return;
    endif
    ##### Exibindo a evolução
    fprintf("%d    |%f|%f|%f|%f\n", n,xprox,xn,ea, f(xprox));
    #####
    xn = xprox;
  endfor
  printf("Falhou em %d", N);
endfunction
