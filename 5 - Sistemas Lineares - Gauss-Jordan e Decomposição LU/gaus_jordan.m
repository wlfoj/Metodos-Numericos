
function [x, INV] = gaus_jordan (A, b, i)
  #### Parte 1 ####
  fator = 0;
  # Obtendo dimensões de A, b, i
  [lin_A, col_A] = size(A);
  [lin_b, col_b] = size(b);
  [lin_i, col_i] = size(i);

  if (lin_A != col_A) & (det(A) != 0)
    disp("A matriz deve ser quadrada e o determinante da matriz dos coef deve ser 0");
    return;
  endif

  Aib = [A, i, b];# A matriz aumentada
  [lin_Aib, col_Aib] = size(Aib);

  # Para colunas
  for k = 1:(col_A)
    ##### PARTE PIVOTIAMENTO #####
    [maior,I] = max(abs(Aib(k:lin_A,k))); # Acho o maior elemento
    ipr = I + k - 1;
    if ipr != k # Se o maior não estiver na linha que estou olhando, devo trocar
      Aux = Aib([k,ipr],:);
      Aib([k,ipr],:) = Aib([ipr,k],:);
      Aib([ipr,k],:) = Aux;
      printf("Operação de troca de linha: L%d ⇔ L%d\n", k, ipr);
      disp(Aib);
      printf("\n");
    endif
    ##### FIM PARTE PIVOTIAMENTO #####

    ##### PARTE NORMALIZAÇÃO #####
    Aib(k,:) = Aib(k,:)/Aib(k,k);
    ##### FIM PARTE NORMALIZAÇÃO #####


    #### PARTE DE ELIMINAÇÃO PARA BAIXO #####
    for i = (k+1) : lin_A # Começo da linha abaixo da que está o pivo e vou até o fim
      fator = Aib(i,k)/Aib(k,k);
      Aib(i,:) = Aib(i,:) - (fator * Aib(k,:));
      # Para visualizar melhor o processo
      printf("Operação realizada: L%d ← L%d -(%f)L%d\n", i,i,fator, k);
      disp(Aib);
      printf("\n");
    endfor

    #### PARTE DE ELIMINAÇÃO PARA CIMA #####
    if k>=2
      for i = (k-1) : -1: 1 # Começo da linha abaixo da que está o pivo e vou até o fim
        fator = Aib(i,k)/Aib(k,k);
        Aib(i,:) = Aib(i,:) - (fator * Aib(k,:));
        # Para visualizar melhor o processo
        printf("Operação realizada: L%d ← L%d -(%f)L%d\n", i,i,fator, k);
        disp(Aib);
        printf("\n");
      endfor
    endif


endfor

  printf("MATRIZ FINAL\n");
  disp(Aib);
  printf("\n\n");

  #### PARTE DA SUBSTITUIÇÃO ####
  x = zeros(col_A, 1); # Inicializa vetor com os valores do resultado
  x(:) = Aib(:, col_Aib);

  # Matriz inversa
  INV = Aib(:, col_A+1: col_A+col_i);

endfunction
