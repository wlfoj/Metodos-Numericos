function retval = gaus_j_backup (A, b, i)
  #### Parte 1 ####
  fator = 0;
  # Obtendo dimensões de A
  [lin_A, col_A] = size(A)

  if (lin_A != col_A) & (det(A) != 0)
    disp("A matriz deve ser quadrada e o determinante da matriz dos coef deve ser 0");
    return;
  endif

  Ab = [A, i, b];# A matriz aumentada
  printf("Matriz aumentada \n");
  disp(Ab);
  printf("\n");
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


      ##### PARTE DE NORMALIZAÇÃO #####
      printf("Operação de Normalização: L%d ← L%d/%d\n", ipr, ipr, Ab(ipr,ipr));
      [maior,I] = max(abs(Ab(k:lin_A,k))); # Acho o maior elemento
      ipr = I + k - 1;
      Ab(ipr, :) = Ab(ipr, :) / Ab(ipr,ipr);
      disp(Ab);
      printf("\n");
      ##### FIM PARTE DE NORMALIZAÇÃO #####

      # Para visualizar melhor o processo
      printf("Operação realizada: L%d ← L%d -(%f)L%d\n", i,i,fator, k);

      ## Faço a operação na linha i para zerar algo nela
      #for j = k : col_A
      fator = Ab(i,k)/Ab(k,k);
      Ab(i,:) = Ab(i,:) - (fator * Ab(k,:));
      #endfor
      # Faço o mesmo processo da operação em b, pq considero a matriz aumentada
      #b(i) = b(i) - fator * b(k);

      # Para visualizar melhor o processo
      #Ab = [A, b];# A matriz aumentada
      disp(Ab);
      printf("\n");
    endfor
  endfor


  #### Parte 2 ####
  x = zeros(col_A, 1); # Inicializa vetor com os valores do resultado
  n = col_A;
  #
  A = Ab(1:lin_A, 1:3);
  b = Ab(1:lin_A, 7);
  x(n) = b(n) / A(n,n);
  # Obtebndo inversa
  [lin_I, col_I] = size(i)
  II = Ab(1:lin_A,   col_A+1:col_A+3);
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
  printf("A inversa é \n");
  disp(II);

endfunction
