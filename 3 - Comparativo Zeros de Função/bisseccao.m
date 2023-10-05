function retval = bisseccao(f, a, b, erro, N)
  retval = zeros(1, 11);



  printf("a=%d,   b=%d,   e=%d,   N=%d \n",a,b,e,N);
  if (f(a) * f(b) > 0)
    fprintf("Não há mudança de sinal!\n")
  else
    it = 1;
    ea = 100;
    r = 100;
    fprintf("iter |    a    |   f(a)  |    b   |   f(b)  |    r   |   f(r)  |   ea\n");
    while (it <= N)
      ranterior = r;
      r = (a + b) / 2;

      #ea = abs(f(r) - f(ranterior));
      ea = abs((r-ranterior)/r);
      #####
      #fprintf("iter |    a   |  f(a)  |    b   |   f(b)  |    r   |   f(r)  |   ea\n");
      fprintf("%d    |%f|%f|%f|%f|%f|%f|%f\n", it,a,f(a),b,f(b),r,f(r),ea);
      retval(it) = r;
      #####
      if (f(r) == 0.0 | ea <= erro)
        fprintf("A raiz no intervalo dado é em r=%f\n", r);
        return;
      endif
      it = it + 1;
      if (f(a) * f(r) < 0)
        b = r;
      else
        a = r;
      endif
    endwhile
    fprintf("Método Falhou em %d iterações\n", N)
  endif
endfunction
