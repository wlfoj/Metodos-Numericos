
## Se o for 1, é primeira ordem
function retval = inter_newton (x, f, xx, o)
  n = o+1;#O +1 é pq se eu pedir 1º ordem, o n precisa ser 2 #length(x)-o;
  b = zeros(n,n);
  b(:,1) = f(:);
  for j=2:n
    for i=1:(n-j+1)
      b(i,j) = (b(i+1, j-1) - b(i, j-1))/(x(i+j-1)-x(i));
    endfor
  endfor

  xt = 1;
  yint = b(1,1);
  for j=1:(n-1)
    xt = xt*(xx - x(j));
    yint = yint + b(1,j+1)*xt;
  endfor
  printf("f(%f)=%f\n", xx, yint);
  retval = yint;
endfunction
