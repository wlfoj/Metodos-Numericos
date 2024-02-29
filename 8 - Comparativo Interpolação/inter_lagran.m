

function retval = inter_lagran (x, f, xx, o)
  n = o+1;#O +1 é pq se eu pedir 1º ordem, o n precisa ser 2 #length(x)-o;
  y=0;
  prod = 0;
  # Para cada termo Li. ex L1
  for i=1:n
     # Faz o produtório
    prod = f(i);
    for j=1:n
      if (i != j)
        prod = prod*(xx-x(j))/(x(i)-x(j));
      endif
    endfor
    y = y + prod;
  endfor
  yint = y
  printf("f(%f)=%f\n", xx, yint);
  retval= yint;
endfunction
