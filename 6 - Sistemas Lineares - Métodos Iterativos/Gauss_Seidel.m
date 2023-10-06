
function retval = Gauss_Seidel (A, b, tol, N, xo)

  normErx = inf;
  k = 1;
  [n, col_A] = size(A);
  C = zeros(n, n);
  d = zeros(n, 1);
  Xatual = xo;
  Xanterior = xo;

  ### Construindo C e d
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
  ### Testa a convergencia critério de Sassenfeld
  if sassenfeld (C) == 0
    printf("O método não irá convergir\n");
    return;
  endif

  ### ========================= ATÉ AQUI ESTÁ OK ========================= ###
  k = 1;
  while k<N && normErx > tol
    # para cada linha da resposta de X
        if k==2
      disp(Xatual);
    endif
    for i=1:n
      sum1 = 0;
      sum2 = 0;
      # Primeiro somatório
      for j=1: (i-1)
        sum1 = sum1 - (A(i,j)*Xatual(j));
      endfor
      # Segundo somatório
      for j=i+1:n
        sum2 = sum2 - (A(i,j)*Xanterior(j));
      endfor
      # Atribuindo o novo valor de Xatual
      Xatual(i) = ((sum1 + sum2)/A(i,i)) + (b(i)/A(i,i));
    endfor

    ### Avaliando o erro relativo
    for i = 1:n
      Erx(i) = abs((Xatual(i)- Xanterior(i))/Xatual(i)) * 100;
    endfor
    #
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
  disp(Xatual);
endfunction

