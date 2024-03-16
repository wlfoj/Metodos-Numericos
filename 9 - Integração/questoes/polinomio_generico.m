
# M_coefs - é o vetor dos coeficientes
# x - é o ponto a ser calculado
function retval = polinomio_generico (M_coefs, x)
  n = length(M_coefs);
  resp = 0;

  printf("y = ");
  for i=0:1:n-1
    printf("(x^%f)*%f + ", i, M_coefs(i+1));
    resp = resp + (x.^i)*M_coefs(i+1);
  endfor
  printf("\n");
  retval = resp;
endfunction

