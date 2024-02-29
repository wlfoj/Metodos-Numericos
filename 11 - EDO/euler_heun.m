# a é o limite inferior e b o superior
function y = euler_heun (a, b, h, y0, f)
    x = a:h:b; # Gera o x
    n = length(x);
    y = zeros(1,n);
    y(1) = y0; 

    aux1 = 0;
    aux2 = 0;
    for i = 1:n-1
        aux1 = f(y(i), x(i)); 
        aux2 = f(  y(i) + aux1*h , x(i) + h  );
        y(i+1) = y(i) + ((h/2)*(aux1+aux2));
        printf("Na iteração %i |  y(%f) = %f \n", i, i*h, y(i+1));

    end
    
    retval = y;
endfunction
