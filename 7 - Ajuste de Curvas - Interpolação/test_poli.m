pkg load symbolic  % Carregar o pacote symbolic (se ainda não estiver carregado)

% Definir variável simbólica
syms x

% Criar polinômio simbólico (exemplo: x^2 + 2x - 1)
p1 = (x-4)*(x+5);

% Exibir o polinômio
printf("Primeiro poli\n")
disp(p1);


% Criar polinômio simbólico (exemplo: x^2 + 2x - 1)
p2 = (x-4)*(x+5)*(x+5);

% Exibir o polinômio
printf("Sewgundo poli\n")
disp(p2);

