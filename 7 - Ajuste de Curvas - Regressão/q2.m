x = [10, 20, 30, 40, 50, 60, 70, 80]
y = [125, 70, 380, 550, 610, 1220, 830, 1450]
printf("Vetores transformados pelo log10\n");
X = log10(x);
Y = log10(y);

[a1, a2, r2] = reg (X, Y);
printf("a1=%f   a2=%f   r2=%f\n", a1, a2, r2);

figure('1');
title('Gráfico da linearização  logy por logx');
xlabel('log10(x)');
ylabel('log10(y)');
xp = linspace(min(X), max(X), 100);
yp = a2 + a1*xp;
plot(xp, yp);
hold on
plot(X, Y, 'o');


figure('2');
title("Gráfico original y por x");
xlabel('x');
ylabel('y');
a2 = 10^a2;
printf("A equação é:  y = %f*x^%f\n", a2, a1);
xp = linspace(min(x), max(x), 100);
yp = a2*xp.^a1;
plot(xp, yp);
hold on
plot(x, y, 'o');


