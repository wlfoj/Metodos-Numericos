
# Função retorna 0 se diverge e 1 se converge
function retval = sassenfeld (C)
  n = length(C);
  b = zeros(1, n);
  for linha =1:n
    sum_direita = 0;
    sum_esquerda = 0;

    for coluna=1:n
      # Se estiver a esquerda da diagonal principal, faça a soma com o b
      if coluna < linha
        sum_esquerda = sum_esquerda + b(coluna)*abs(C(linha, coluna));
      # Se estiver na direita, faça a soma normal
      else
        sum_direita = sum_direita + abs(C(linha, coluna));
      endif
    endfor
    b(linha) = sum_esquerda + sum_direita;
  endfor
  # Verifica se atende o critério de convergência
  if max(b)< 1
    printf("b=%d  o método converge\n",max(b))
    retval = 1;
  else
    printf("b=%d  o método diverge\n",max(b))
    retval = 0;
  endif

endfunction

