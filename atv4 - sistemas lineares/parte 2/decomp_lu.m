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
## @deftypefn {} {@var{retval} =} decomp_lu (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: washi <washi@WASHINGTON-PC>
## Created: 2023-09-28

function [L,U] = decomp_lu (A)
  [lin_A, col_A] = size(A);
  L = eye(lin_A);
  U = eye(lin_A);

  for j=1:lin_A-1
    pivo = A(j,j);
    for i=j+1: col_A
      fator = A(i,j)/pivo;
      A(i,:) = A(i,:) - (fator*A(j,:));
      L(i,j) = fator;
      printf("Adicionando %f em L(%d,%d)\n", fator, i, j);
      disp(L);
      printf("\n\n");
      printf("Operação realizada em U: L%d ← L%d -(%f)L%d\n", i,i,fator, j);
      disp(A);
      printf("\n\n");

    endfor
  endfor
  U = A;

endfunction
