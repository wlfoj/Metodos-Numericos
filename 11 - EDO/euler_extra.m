# a é o limite inferior e b o superior
function y = euler_extra (a, b, h, fleao, fgazela)
    x = a:h:b; # Gera o x
    n = length(x);

    y_leao = zeros(1,n);
    y_gazela = zeros(1,n);
    y_leao(1) = 500; 
    y_gazela(1) = 3000;

    auxl = 0;
    auxg = 0;
    for i = 1:n-1
        auxl = fleao(  y_gazela(i), y_leao(i)  ); 
        y_leao(i+1) = y_leao(i) + auxl*h;


        auxg = fgazela(  y_gazela(i), y_leao(i)  ); 
        y_gazela(i+1) = y_gazela(i) + auxg*h;
        if i < 4
            printf("Iteração %i\n", i);
            printf("gazelas(%f)=%f\n", x(i), y_gazela(i));
            printf("leao(%f)=%f\n", x(i), y_leao(i));
        end

    end
    
    figure
    plot(x,y_leao, x, y_gazela);
    legend('População de predadores', 'População de presas')
    xlabel('Anos')
    ylabel('Quantidade')
    title("População no tempo")

    figure
    plot(y_leao, y_gazela);
    xlabel('População de leões')
    ylabel('População de gazelas')
    title("Predadores x Presas")
endfunction
