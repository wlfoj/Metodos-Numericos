
function retval = newton_rapshon (xo, e, N, f, df)
  xn = xo;
  ##### Exibindo a evolução - Header da tabela
  fprintf("n    |  xprox  |    xr   |   ea   |  f(xprox)  \n");
  for n=0:N
    xprox = xn - (f(xn)/df(xn));
    ea = abs((xprox-xn)/xprox);
    if  ea < e
      ##### Exibindo a evolução
      fprintf("%d    |%f|%f|%f|%f\n", n,xprox,xn,ea, f(xprox));
      #####
      printf("A raíz é %d, encontrado na %d iteração", xprox, n);
      return;
    endif
    ##### Exibindo a evolução
    fprintf("%d    |%f|%f|%f|%f\n", n,xprox,xn,ea, f(xprox));
    #####
    xn = xprox;
  endfor
  printf("Falhou em %d", N);
endfunction
