# Montando a tabela
x = 1:10
y = [1.3, 3.5, 4.2, 5, 7, 8.8, 10.1, 12.5, 13, 15.6]


[a1, a2, r2] = reg (x, y);

printf("a1=%f   a2=%f   r2=%f\n", a1, a2, r2);
figure('1');
title('Questão 1');
xlabel('x');
ylabel('y');
xp = linspace(min(x), max(x), 100);
yp = a2 + a1*xp;
plot(xp, yp);
hold on
plot(x, y, 'o');
