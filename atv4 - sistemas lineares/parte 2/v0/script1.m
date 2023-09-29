A = [-0.04 0.04 0.12; 0.56 -1.56 0.32; -0.24 1.24 -0.28];
b = [ 3;1;0];
i = [ 1 0 0; 0 1 0; 0 0 1];


% Concatenar a matriz A com a matriz identidade i
AIb = [A i b];

% Tamanho da matriz aumentada
[lin_A, col_AB] = size(AIb);

disp('Matriz aumentada inicial:');
disp(AIb);
printf("\n");

% Eliminação para a frente
for pivo_linha = 1:lin_A

    ##### PARTE DE PIVOTEAMENTO #####
      [maior,I] = max(abs(AIb(1:lin_A, pivo_linha))); # Acho o maior elemento
      ipr = I ;#+ pivo_linha - 1; # Vejo em qual indice está o maior elemento
      if ipr != pivo_linha # Se o maior não estiver na linha que estou olhando, devo trocar
        printf("Operação de troca de linha: L%d ⇔ L%d\n", pivo_linha, ipr);,
        temp_linha = A(pivo_linha, :);  % Armazena a linha x temporariamente
        A(pivo_linha, :) = A(ipr, :);   % Substitui a linha x pela linha y
        A(ipr, :) = temp_linha;  % Atribui a linha temporária à linha y
        disp(AIb);
        printf("\n");
      endif
      ##### FIM PARTE DE PIVOTEAMENTO #####

      pivot = AIb(pivo_linha, pivo_linha); # Pega o pivo


      ##### PARTE DE NORMALIZAÇÃO #####
      printf("Operação de Normalização: L%d ← L%d/%d\n", pivo_linha, pivo_linha, pivot);
      AIb(pivo_linha, :) = AIb(pivo_linha, :) / pivot;
        disp(AIb);
        printf("\n");
      ##### FIM PARTE DE NORMALIZAÇÃO #####



    % Eliminar outras entradas na coluna do pivô
    for row = 1:lin_A
        if row ~= pivo_linha
            printf("Operação realizada: L%d ← L%d -(%f)L%d\n", row, row, factor, pivo_linha);
            factor = AIb(row, pivo_linha);
            AIb(row, :) = AIb(row, :) - factor * AIb(pivo_linha, :);
            disp(AIb);
            printf("\n");
        end
    end

    % Exibir a matriz após cada passo
    #disp(['Passo ', num2str(pivo_linha), ':']);
    #disp(AIb);
end

% A matriz aumentada agora está na forma escalonada reduzida
% A última coluna contém a solução do sistema
solution = AIb(:, end);

% Exibir a solução
disp('Solução:');
disp(solution(1:3));  % A solução corresponde às três primeiras entradas

% Exibir a matriz identidade
disp('Matriz Identidade:');
disp(AIb(:, 1:3));

% A matriz identidade é a matriz inversa neste caso
disp('Matriz Inversa:');
disp(AIb(:, 4:6));


