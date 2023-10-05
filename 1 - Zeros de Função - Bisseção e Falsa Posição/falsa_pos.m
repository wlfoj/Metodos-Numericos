function retval = falsa_pos(a, b, e, N)
  ea = 1;# Define que começa com error

  if (g(a)*g(b) > 0)
    fprintf("Não há raízes no intervalo dado\n");
    return;
  else
    x = b - (g(b)*(a-b))/(g(a)-g(b));
    it = 1;
    while (abs(ea)>e && it < N)
      antigo = g(x);
      if (g(a)*g(x) < 0)
        b = x;
       else
        a = x;
      endif
      x = b -(g(b)*(a-b))/(g(a)-g(b));
      ea = (g(x) - antigo);
      #####
      fprintf("iter |    a   |  f(a)  |    b   |   f(b)  |    x   |   f(x)  |   ea\n");
      fprintf("%d    |%f|%f|%f|%f|%f|%f|%f\n", it,a,g(a),b,g(b),x,g(x),ea);
      #####
      it = it + 1;
    endwhile
    fprintf("A raiz no intervalo dado é em x=%f\n", x);
  endif
endfunction
