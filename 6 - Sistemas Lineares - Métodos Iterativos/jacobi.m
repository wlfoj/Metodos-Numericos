##Como tira a norma??

#Matriz de coeficientes: [A]
#Vetor independente: [b],
#Tolerância: tol,
#Numero máximo de iterações: N
#Chute inicial: x(0) vetor inicial [0; 0; 0]

function retval = jacobi (A, b, tol, N, xo)
  # Testa a convergencia diagonal dominante aqui
  #if diagonal_dominante(A) == 0
  #  printf("O método não irá convergir\n");
  #  return;
  #endif
  #
  normErx = inf;
  k = 1;
  [n, col_A] = size(A);
  C = zeros(n, n);
  d = zeros(n, 1);
  #X = zeros(n, 1); # Vetor dos próximos valores
  Xatual = xo;
  Xanterior = xo;

  ## Construindo C e d
  for i = 1:n #(linhas da matriz A)
    for j = 1:n #(colunas da matriz)
      if i == j
        C(i,j) = 0;
        d(i,1) = b(i,1)/A(i,i);
      else
        C(i,j) = -A(i,j)/A(i,i);
      endif
    endfor
  endfor

  k = 1;
  ## Fazendo as aproximações para os valores atuais de aproximação
  while k<N && normErx > tol
    Xatual = C * Xanterior + d; # Encontrando o proximo valor
    # Calcula o erro
    for i = 1:n
      Erx(i) = abs((Xatual(i)- Xanterior(i))/Xatual(i)) * 100;
    endfor
    # Se já achei uma aproximação boa o suficiente
    if max(Erx) <= tol
      printf("A solução foi encontrada em %d iterações e com erro %d\n", k, max(Erx));
      printf("O resultado foi:\n");
      disp(Xatual);
      return;
    endif
    # sigo procurando
    k = k + 1;
    normErx = max(Erx);#####???????
    Xanterior = Xatual;
  endwhile
  # Veriifica se consegui resolver
  if k = N
    printf("Erro de convergência!\n");
    disp(Xatual);
  endif

endfunction

