function retval = encontra_pos (vetor, valor_referencia, num_elementos)
  n = length(vetor);

  i=1;
  while vetor(i)<valor_referencia
    i = i+1;
  endwhile
  printf("%d",i);


endfunction
