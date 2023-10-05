

function retval = gaus_altern (A, b, id)
  #### Parte 1 ####
  fator = 0;
  # Obtendo dimensões de A
  [lin_A, col_A] = size(A)

  if (lin_A != col_A) & (det(A) != 0)
    disp("A matriz deve ser quadrada e o determinante da matriz dos coef deve ser 0");
    return;
  endif
  AIb = [A, id, b];# A matriz aumentada


  # A diagonal
  for k = 1: col_A
    [maior,I] = max(abs(AIb(1:lin_A,k))); # Acho o maior elemento na coluna
      ipr = I; # Obtenho a linha do elemento

      if ipr != k # Se o maior não estiver na linha que estou olhando, devo trocar
        printf("Operação de troca de linha: L%d ⇔ L%d\n", k, ipr);
        Aux = AIb([k,ipr],:);
        AIb([k,ipr],:) = AIb([ipr,k],:);
        AIb([ipr,k],:) = Aux;
        disp(AIb);
        printf("\n");
      endif
  endfor




  # Para colunas
  for k = 1:col_A
    # Para linhas , tanto faz usar lin_A ou col_A já que é quadrada
    for i = 1 : lin_A
      printf("Visitei %dx%d\n", i, k);
      ## PIVO ##
      [maior,I] = max(abs(AIb(1:lin_A,k))); # Acho o maior elemento
      ipr = I ;#+ k - 1; # Vejo em qual indice está o maior elemento
      if ipr != k # Se o maior não estiver na linha que estou olhando, devo trocar
        printf("Operação de troca de linha: L%d ⇔ L%d\n", k, ipr);
        Aux = AIb([k,ipr],:);
        AIb([k,ipr],:) = AIb([ipr,k],:);
        AIb([ipr,k],:) = Aux;
        disp(AIb);
        printf("\n");
      endif
      ## FIM PARTE PIVO ##


      ## NORMALIZANDO ##
      [maior,I] = max(abs(AIb(1:lin_A,k:k))); # Acho o maior elemento
      ipr = I; # Vejo em qual indice está o maior elemento
      AIb(ipr,:) = AIb(ipr,:)/AIb(ipr,ipr);
      printf("O maior elemento é %d e está na linha %d aponto para %d\n", maior, I, k);
      #disp(AIb);
      #printf("\n");
      ## FIM NORMALIZANDO ##


      ## ELIMINAÇÃO ##
      #printf("Estou pegando a linha %d e a %d\n", i, k);
      #printf("Estou zerando para o pivo de %d %d\n", ipr, k);
      if ipr != i
        fator = AIb(i,k)/AIb(k,k);
        AIb(i,:) = AIb(i,:) - (fator * AIb(k,:));
        printf("Operação realizada: L%d ← L%d -(%f)L%d\n", i,i,fator, k);
        disp(AIb);
        printf("\n\n");
      endif
      #


      #fator = AIb(i,k)/AIb(k,k);
      #AIb(i,:) = AIb(i,:) - (fator * AIb(k,:));
      # Faço o mesmo processo da operação em b, pq considero a matriz aumentada
      #b(i) = b(i) - fator * b(k);

      # Para visualizar melhor o processo
      #AIb = [A, b];# A matriz aumentada
      #disp(AIb);
      #printf("\n");
    endfor
  endfor


  #### Parte 2 (Separando as matrizes)####
  x = zeros(col_A, 1); # Inicializa vetor com os valores do resultado
  [lin_AIb, col_AIb] = size(AIb);
  # Obtendo a matriz A
  A = AIb(1:lin_A, 1:col_A); # Matriz A vai da linha 1 até a linha de A e de coluna 1 até col_a
  # Obtendo a matriz I
  [lin_id, col_id] = size(id);
  ini_col_inv = col_A+1;# A matriz Invertida cometça aqui
  fim_col_inv = col_A+1+col_id;# e termina aqui
  inver = AIb(1:lin_A, ini_col_inv: fim_col_inv);
  # Obtendo a matriz b
  ini_col_b = col_AIb;# A matriz b cometça aqui
  fim_col_b = col_AIb;# e termina aqui
  b = AIb(1:lin_A, ini_col_b:fim_col_b );

  #### Parte 3 (Resolvendo)####
  x(col_A) = b(col_A) / A(col_A,col_A);
  # Começo a resolver
  for i = col_A-1 : -1 : 1
    soma = b(i);
    for j = i+1 : col_A
      soma = soma - A(i,j) * x(j);
    endfor
    x(i) = soma / A(i,i);
  endfor

  # Para visualizar melhor o processo
  printf("Os valores dos parametros encontrados foram:\n");
  printf("x1=%f,  x2=%f,  x3=%f \n", x(1), x(2), x(3));

endfunction
