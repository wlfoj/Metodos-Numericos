
function retval = metodo_secante (xo, xant, e, N, f)
  xn = xo;
  ##### Exibindo a evolução - Header da tabela
  fprintf("n    |  xprox  |    xr   |   ea   |  f(xprox)  \n");
  for n=0:N
    xprox = ((xant*f(xn)) - (xn*f(xant)))/(f(xn) - f(xant));
    ea = (xprox - xn)/xprox;

    if abs(ea)< e
      ##### Exibindo a evolução
      fprintf("%d    |%f|%f|%f|%f\n", n,xprox,xn,ea, f(xprox));
      #####
      printf("A raíz é %d, encontrado na %d iteração", xprox, n);
      return;
    endif
    ##### Exibindo a evolução
    fprintf("%d    |%f|%f|%f|%f\n", n,xprox,xn,ea, f(xprox));
    #####
    xant = xn;
    xn = xprox;
  endfor
endfunction
