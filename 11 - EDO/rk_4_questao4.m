function y = rk_4_questao4 (a, b, h, f)
    x = a:h:b;
    n = length(x);
    y = zeros(1,n);
    y(1) = 6;
    
    for i = 1:n-1
        k1 = f( y(i), x(i) );
        k2 = f( y(i) + ((h/2)*k1),  x(i)+(h/2) );
        k3 = f( y(i) + ((h/2)*k2),  x(i)+(h/2) );
        k4 = f( y(i) + h*k3, x(i)+h);

        #printf("k1 = %f | k2=%f | k3 = %f | k4 = %f \n", k1, k2, k3, k4);
        y(i+1) = y(i) + (h/6)*(k1 + 2*k2 + 2*k3 + k4);
        #printf("Na iteração %i |  y(%f) = %f \n", i, i*h, y(i+1));
        #printf("Na iteração %i o valor de y(%i)=%f\n\n",i, i+1, y(i+1));
        if y(i+1) <= 0
            printf("Atingi o 0 em %i iterações\n", i);
            break
        end
    end


endfunction