

function retval = gaus_pivo (A, b)
  #### Parte 1 ####
  fator = 0;
  # Obtendo dimensões de A
  [lin_A, col_A] = size(A)

  if (lin_A != col_A) & (det(A) != 0)
    disp("A matriz deve ser quadrada e o determinante da matriz dos coef deve ser 0");
    return;
  endif

  Ab = [A, b];# A matriz aumentada
  # Para colunas
  for k = 1:(col_A-1)
    # Para linhas , tanto faz usar lin_A ou col_A já que é quadrada
    for i = (k+1) : lin_A
      ## PARTE PIVO ##
      [maior,I] = max(abs(Ab(k:lin_A,k))); # Acho o maior elemento
      ipr = I + k - 1;
      if ipr != k # Se o maior não estiver na linha que estou olhando, devo trocar
        printf("Operação de troca de linha: L%d ⇔ L%d\n", k, ipr);
        Aux = Ab([k,ipr],:);
        Ab([k,ipr],:) = Ab([ipr,k],:);
        Ab([ipr,k],:) = Aux;
        disp(Ab);
        printf("\n");
      endif
      ## PARTE PIVO ##

      fator = A(i,k)/A(k,k);

      # Para visualizar melhor o processo
      printf("Operação realizada: L%d ← L%d -(%f)L%d\n", i,i,fator, k);

      ## Faço a operação na linha i para zerar algo nela
      for j = k : col_A
        A(i,j) = A(i,j) - (fator * A(k,j));
      endfor
      # Faço o mesmo processo da operação em b, pq considero a matriz aumentada
      b(i) = b(i) - fator * b(k);

      # Para visualizar melhor o processo
      Ab = [A, b];# A matriz aumentada
      disp(Ab);
      printf("\n");
    endfor
  endfor


  #### Parte 2 ####
  x = zeros(col_A, 1); # Inicializa vetor com os valores do resultado
  n = col_A;

  x(n) = b(n) / A(n,n);
  # Começo a resolver
  for i = n-1 : -1 : 1
    soma = b(i);
    for j = i+1 : n
      soma = soma - A(i,j) * x(j);
    endfor
    x(i) = soma / A(i,i);
  endfor

  # Para visualizar melhor o processo
  printf("Os valores dos parametros encontrados foram:\n");
  printf("x1=%f,  x2=%f,  x3=%f \n", x(1), x(2), x(3));

endfunction
