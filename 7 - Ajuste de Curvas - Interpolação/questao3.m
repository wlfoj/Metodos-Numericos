x1 = [0, 0.5, 1];
f1 = [1; 2.12; 3.55];
xx1 = 0.7
n1 = length(x1);

x2 = [0, 0.5, 1];
f2 = [1.3; 2.5; 0.9];
xx2 = 0.8;
n2 = length(x2);

#============== Questão 1 ==============#
# Montando a matriz A (Vandermonde)
A = zeros(3,3);
for i=1:n1
  for j=1:n1
    A(i,j) = x1(i)^(j-1);
  endfor
endfor
b = f1;
A
b
# Resolvendo por gaus_pivo
#gaus_pivo(A, b)

# Questão 2
# Montando a matriz A (Vandermonde)
#A = zeros(3,3);
#for i=1:n2
#  for j=1:n2
#    A(i,j) = x2(i)^(j-1);
#  endfor
#endfor
#b = f2;
# Resolvendo por gaus_pivo
#gaus_pivo(A, b)
