# a é o limite inferior e b o superior
function y = ponto_medio (a, b, h, y0, f)
    x = a:h:b; # Gera o x
    n = length(x);
    y = zeros(1,n);
    y(1) = y0; 

    aux1 = 0;
    aux2 = 0;
    for i = 1:n-1
        aux1 = f(y(i), x(i)); 
        aux2 = f(  y(i) + aux1*(h/2), x(i) + (h/2)   );
        y(i+1) = y(i) + aux2*h;
        printf("Na iteração %i |  y(%f) = %f \n", i, i*h, y(i+1));

        #if i < 4
        #    printf("o meu y(%i) é  %f\n",i,y(i));
        #end
        #if i == 100
        #    break
        #end

    end
    
    retval = y;
endfunction
