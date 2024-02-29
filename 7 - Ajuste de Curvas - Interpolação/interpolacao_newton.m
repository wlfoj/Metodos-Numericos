x = [0, 0.5, 1];
f = [1, 2.12, 3.55];
xx = 0.7
n = length(x);

b = zeros(n,n);
b(:,1) = f(:);
for j=2:n
  for i=1:(n-j+1)
    b(i,j) = (b(i+1, j-1) - b(i, j-1))/(x(i+j-1)-x(i));
  endfor
endfor

xt = 1;
yint = b(1,1);
for j=1:(n-1)
  xt = xt*(xx - x(j));
  yint = yint + b(1,j+1)*xt;
endfor

printf("f(%f)=%f", xx, yint);
