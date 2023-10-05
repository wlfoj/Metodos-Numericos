## Copyright (C) 2023 washi
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} jacobi (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: washi <washi@WASHINGTON-PC>
## Created: 2023-10-04

#Matriz de coeficientes: [A]
#Vetor independente: [b],
#Tolerância: tol,
#Numero máximo de iterações: N
#Chute inicial: x(0) vetor inicial (0, 0, 0)

function retval = jacobi (A, b, tol, N, xo)
  # Testa a convergencia diagonal dominante aqui
  # Testa a convergencia diagonal dominante aqui
  normErx = inf;
  k = 1;
  [n, col_A] = size(A);
  C = zeros(n, n);
  d = zeros(n, 1);
  x = xo;

  for i = 1:n #(linhas da matriz A)
    for j = 1:n #(colunas da matriz)
      if i == j
        C(i,j) = 0;
        d(i,1) = b(i,1)/a(i,i);
      else
        C(i,j) = -a(i,j)/a(i,i);
      endif
    endfor
  endfor
  x(0) = xo;
  k = 1;


endfunction




Enquanto k < N e normErx > tol faça
x(k) = C * x(k-1) + d
Para i = 1,..., n faça
Erx(i) = abs((x(k) – x(k-1)
)/x(k)
) * 100

fim Para
Se max(Erx) < tol
x(k) ← solução (retornar x, k, Erx), Parar!
fim Se
k = k + 1
fim Enquanto
Se k = N
mensagem de erro de convergência !
fim Se
Saída: Valor das variáveis do sistema [x]
Iterações, itr, erro Erx ou mensagem de erro
