
## Função que retorna 1 se a diagonal for a dominante e 0 se não for
function retval = diagonal_dominante (A)
  [n, m] = size(A);
  sum = 0;

  for k =1:n # Linhas
    for j=1:m # Colunas
      if k != j # Se não for da diagonal principal
        sum = sum + abs(A(k,j)); # Some o modulo ao acumulador
      endif
    endfor
    # Verifica se esta diagonal não é dominante, para encerrar logo
    if A(k,k) <= sum
      printf("A(k,k)=%d     sum =%d\n", A(k,k), sum);
      retval = 0;
      return;
    endif
    sum = 0; # Zera o acumulador para recomeçar
  endfor

  retval = 1;

endfunction
