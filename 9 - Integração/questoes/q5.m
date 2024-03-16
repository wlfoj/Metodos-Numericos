printf("QUESTÃO 5-A\n");
t = [1; 2; 3.25; 4.5;   6; 7; 8; 8.5; 9; 10];
printf("Multiplando o tempo dado (minutos) por 60 para obter o tempo em segundos, obtem-se um novo vetor para o tempo:\n");
ts = t*60
#x = linspace(0, 5, 100);
v = [5; 6; 5.5 ;   7; 8.5; 8; 6;    7; 7; 5];
#p = reg_polinomial(X, Y, 3);
#display(p);

printf("\nAplicando a integral pela regra do trapézio simples no intervalor [1; 10]\n");
distancia = integral_trapezio_vetor (100, ts, v);
printf("Obtem-se a distância total percorrida de %fm\n", distancia);
vm = distancia/(ts(10)-ts(1));
printf("\n\nA velocidade média no trajeto é %f\n", vm);
# ==================================================================================== #


