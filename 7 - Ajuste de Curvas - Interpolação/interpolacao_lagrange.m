x = [2.5, 3, 4.5, 5, 6];
f = [7.3516, 7.5625, 8.4453, 9.1895, 12];
n = length(x) -3;# 2 resulta em primeira ordem
printf("\n%d\n", n);
xx = 3.5;

y=0;
prod = 0;
# Para cada termo Li. ex L1
for i=1:n
   # Faz o produtório
  prod = f(i);
  for j=1:n
    if (i != j)
      prod = prod*(xx-x(j))/(x(i)-x(j));
    endif
  endfor
  y = y + prod;
endfor
yint = y

printf("f(%f)=%f", xx, yint);


