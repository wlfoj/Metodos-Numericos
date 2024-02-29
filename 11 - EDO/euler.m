# a é o limite inferior e b o superior
function y = euler (a, b, h, y0, f)
    x = a:h:b; # Gera o x
    n = length(x);
    y = zeros(1,n);
    y(1) = y0; 

    aux = 0;
    for i = 1:n-1
        aux = f(y(i), x(i)); 
        y(i+1) = y(i) + aux*h;
        
        printf("Na iteração %i |  y(%f) = %f \n", i, i*h, y(i+1));

    end
    #plot(x,y);
    retval = y;
endfunction
