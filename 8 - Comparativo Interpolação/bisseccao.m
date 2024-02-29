function retval = bisseccao(a, b, erro, N, f)
  if (f(a) * f(b) > 0)
    fprintf("Não há mudança de sinal!\n")
  else
    it = 1;
    ea = 100;
    ranterior = 100;

    while (it <= N)
      r = (a + b) / 2;
      ea = abs(f(r) - f(ranterior));
      #####
      fprintf("iter |    a   |  f(a)  |    b   |   f(b)  |    r   |   f(r)  |   ea\n");
      fprintf("%d    |%f|%f|%f|%f|%f|%f|%f\n", it,a,f(a),b,f(b),r,f(r),ea);
      #####
      if (f(r) == 0 | ea <= erro)
        fprintf("A raiz no intervalo dado é em r=%f\n", r);
        return;
      endif
      ranterior = r;
      it = it + 1;
      if (f(a)*f(r) < 0)
        b = r;
      else
        a = r;
      endif
    endwhile
    fprintf("Método Falhou em %d iterações", N)
  endif
endfunction
