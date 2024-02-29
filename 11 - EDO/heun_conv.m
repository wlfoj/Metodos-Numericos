# a é o limite inferior e b o superior
function y = heun_conv (a, b, h, y0, f, ea_conv)
    x = a:h:b; # Gera o x
    n = length(x);
    y = zeros(1,n);
    y(1) = y0; 

    aux1 = 0;
    aux2 = 0;
    for i = 1:n-1
        aux1 = f(y(i), x(i)); 
        #aux2 = f(  y(i) + aux1*h   );
        y(i+1) = y(i) + (aux1*h); # Preditor
        
        # ETAPA DE RECORRENCIA
        count = 0;
        ea = 100;
        while(ea>ea_conv)
            count = count +1;
            ant = y(i+1);
            y(i+1) = y(i) + (aux1 + f(y(i+1), x(i+1)))*(h/2); # Corretora
            #ea = ((y(i+1) - ant)/y(i+1))*100;
            ea = abs( (y(i+1) - ant)  );
            #if i<4
            #printf("Atingi o critério de y(%i) em %i itertações o ea=%f\n", i, count, ea);
            #end
        end
        printf("Na iteração %i (ao final da etapa de recorrencia) |  y(%f) = %f \n", i, i*h, y(i+1));
        #if i<4
        #    printf("y(%i)=%f \n", i, y(i+1));
        #end

    end
    #plot(x,y)
    retval = y;
endfunction
