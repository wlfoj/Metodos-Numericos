A = [2 1 -3; -1 3 2; 3 1 -3];
b2 = [3;1;2];
b = [2;0;1];


function x = substituicao_progressiva(L, b)
    n = length(b);
    x = zeros(n, 1);

    for i = 1:n
        soma = 0;
        for j = 1:i-1
            soma = soma + L(i, j) * x(j);
        end
        x(i) = (b(i) - soma) / L(i, i);
        printf("Vetor y\n");
        disp(x);
        printf("\n");
    end
end




function z = substituicao_regressiva(U, y)
    n = length(y);
    z = zeros(n, 1);

    for i = n:-1:1
        soma = 0;
        for j = i+1:n
            soma = soma + U(i, j) * z(j);
        end
        z(i) = (y(i) - soma) / U(i, i);
        printf("Vetor x\n");
        disp(z);
        printf("\n");
    end
end


[L, U] = decomp_lu(A);
printf("\n\n");

### Resolve triangular inferior ###
printf("========= Resolvendo Ly=b =========\n");
y = substituicao_progressiva(L, b);
printf("\n\n");

### Resolve triangular superior ###
printf("========= Resolvendo Ux=y =========\n");
x = substituicao_regressiva(U,y);
printf("O resultado é x1=%f,   x2=%f,   x3=%f",x(1), x(2), x(3));

