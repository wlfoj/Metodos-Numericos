% Matrizes iniciais
i = [1 0 0; 0 1 0; 0 0 1];
A = [-0.04 0.04 0.12; 0.56 -1.56 0.32; -0.24 1.24 -0.28];
b = [3; 1; 0];

% Concatenar a matriz A com a matriz identidade i
AIb = [A i b];

% Tamanho da matriz aumentada
[lin_A, n] = size(AIb);

disp('Passo 0: Matriz aumentada inicial:');
disp(AIb);

% Eliminação para a frente
for pivot_row = 1:lin_A
    % Encontrar o pivô (elemento principal) na coluna atual
    pivot = AIb(pivot_row, pivot_row);
    ## Faz pivoteamento
      [maior,I] = max(abs(AIb(1:lin_A, pivot_row:pivot_row))); # Acho o maior elemento
      ipr = I ;#+ pivot_row - 1; # Vejo em qual indice está o maior elemento
      if ipr != pivot_row # Se o maior não estiver na linha que estou olhando, devo trocar
        printf("Operação de troca de linha: L%d ⇔ L%d\n", pivot_row, ipr);
        Aux = AIb([pivot_row,ipr],:);
        AIb([pivot_row,ipr],:) = AIb([ipr,pivot_row],:);
        AIb([ipr,pivot_row],:) = Aux;
        disp(AIb);
        printf("\n");
      endif
    % Dividir a linha do pivô pelo pivô para normalizá-lo para 1
    AIb(pivot_row, :) = AIb(pivot_row, :) / pivot;

    % Eliminar outras entradas na coluna do pivô
    for row = 1:lin_A
        if row ~= pivot_row
            factor = AIb(row, pivot_row);
            AIb(row, :) = AIb(row, :) - factor * AIb(pivot_row, :);
        end
    end

    % Exibir a matriz após cada passo
    disp(['Passo ', num2str(pivot_row), ':']);
    disp(AIb);
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


