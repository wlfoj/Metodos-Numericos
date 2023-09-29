
function retval = iteracao_linear (xo, e, N)
  #Se a magnitude do valor da derivada de g(x) no ponto for >1, irá divergir
  #if abs(dg(xo)) > 1
   # printf("O método irá divergir");
    #return;
  #endif

  xr = xo;
  iter = 0;
  ##### Exibindo a evolução - Header da tabela
  fprintf("iter |  xrant  |    xr   |   ea   |  f(xr)  \n");
  while iter <= N
    xrant = xr;
    xr = g(xrant);
    iter = iter +1;
    if xr != 0
      ea = abs((xr-xrant)/xr)*100;
    endif
    if ea<e || iter>=N
       ##### Exibindo a evolução
       fprintf("%d    |%f|%f|%f|%f\n", iter,xrant,xr,ea, f(xr));
       #####
      printf("A raíz é %d, achada em %d iterações\n", xr, iter);
      return;
    endif
    ##### Exibindo a evolução
    fprintf("%d    |%f|%f|%f|%f\n", iter,xrant,xr,ea, f(xr));
    #####
  endwhile
  printf("Falhou em %d", N);

endfunction
