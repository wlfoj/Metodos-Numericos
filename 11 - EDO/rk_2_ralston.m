function y = rk_2_ralston (x_inicial, x_final, h, y0, f)
    x = x_inicial:h:x_final; # Gera o x
    n = length(x);
    y = zeros(1,n);
    y(1) = y0; 
    
    for i = 1:n-1
        k1 = f(y(i), x(i));
        k2 = f( y(i) + ((3/4)*k1*h),  x(i) + ((3/4)*h));
        #printf("k1 = %f    k2=%f \n", k1, k2);
        y(i+1) = y(i) + h*((1/3)*k1 + (2/3)*k2);
        printf("Na iteração %i |  y(%f) = %f \n", i, i*h, y(i+1));
        #printf("Na iteração %i o valor de y(%i)=%f\n",i, i+1, y(i+1));
    end


endfunction