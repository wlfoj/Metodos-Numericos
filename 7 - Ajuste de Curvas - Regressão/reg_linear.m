function [a1, a2, r2] = reg_linear (x, y)
  nx = length(x);
  ny = length(y);
  med_y = mean(y);
  med_x = mean(x);
  #
  r2 = 0;
  a1 = 0;
  a2 = 0;
  # Deu erro
  if nx != ny
    return;
  endif
  # Para calcular os coef de a
  Sx = 0; # Somatório de x
  Sy = 0; # Somatório de y
  Sxy = 0; # Somatório de xy
  Sx2 = 0; # Somatório de x^2
  Sy2 = 0; # Somatório de y^2
  # Para calcular o coef r2
  St = 0; # Somatório do resíduo em relação a média
  Sr = 0; # Somatório do resíduo em relação ao ajuste linear
  Sy_d = 0; # Desvio padrão em relação á média
  Sy_x = 0; # Desvio padrão em relação ao ajuste linear

  # calculando valores
  for i=1:1:nx
    Sx = Sx + x(i);
    Sy = Sy + y(i);
    Sxy = Sxy + x(i)*y(i);
    Sx2 = Sx2 + x(i)^2;
    Sy2 = Sy2 + y(i)^2;
  endfor

  a1 = ((nx*Sxy) - (Sx*Sy))/((nx*Sx2)-(Sx*Sx));
  a2 = mean(y) - a1*mean(x);

  for i=1:1:nx
    St = St + (y(i) - med_y)^2;
    Sr = Sr + (y(i) - a2 - (a1*x(i)))^2;
  endfor
  Sy_d = sqrt(St/(nx-1));
  Sy_x = sqrt(Sr/(nx-2));
  r2 = (St-Sr)/St;



endfunction
