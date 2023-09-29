
function retval = metodo_secante (f, xo, xant, e, N)
  retval = zeros(1, 3);
  printf("x0=%d,  xant=%d,  e=%d,  N=%d \n",xo,xant,e,N);
  xn = xo;
  ##### Exibindo a evolução - Header da tabela
  fprintf("n    |  xprox   |    xr   |   ea   |  f(xprox)  \n");
  for n=1:N
    xprox = ((xant*f(xn)) - (xn*f(xant)))/(f(xn) - f(xant));
    ea = (xprox - xn)/xprox;
    retval(n) =xprox;
    if abs(ea)< e
      ##### Exibindo a evolução
      fprintf("%d    |%f |%f|%f|%f\n", n,xprox,xn,ea, f(xprox));
      #####
      printf("A raíz é %d, encontrado na %d iteração\n", xprox, n);
      return;
    endif
    ##### Exibindo a evolução
    fprintf("%d    |%f |%f|%f|%f\n", n,xprox,xn,ea, f(xprox));
    #####
    xant = xn;
    xn = xprox;
  endfor
endfunction
