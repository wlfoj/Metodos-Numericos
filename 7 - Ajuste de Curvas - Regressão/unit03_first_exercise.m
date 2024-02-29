#addpath('./methods')
# Exemplo
#x = [0; 0.25; 0.5; 0.75; 1];
#y = [1; 1.284; 1.6487; 2.1170; 2.7183];


%p = minimumSquarePolinomialRegressionMethod(x, y, 1);
%p = minimumSquarePolinomialRegressionMethod(x, y, 2);
%p = minimumSquarePolinomialRegressionMethod(x, y, 3);

# Slide
x = [0.1; 0.4; 0.5; 0.7; 0.7; 0.9];
y = [0.61; 0.92; 0.99; 1.52; 1.47; 2.03];
p = reg_polinomial(x, y, 2)
# o p(0) é o termo que n tem x, o último p é o termo de maior x

polinomio_generico(p, x);

# Montando a função

#scatter(x, y)
