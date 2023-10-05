function y = f(x)
  y = sin(x) - (x^2);
endfunction


a = 0.5;
b=1;
N=100;
es = 0.02;



if f(a)*f(b)>0
  fprintf("Não há mudança de sinal!")
else
  it = 1;
  eabs = 100;
  antigo = 100;
  while   it <= N
    r = (a+b)/2;
    eeabs = abs(r-antigo);
    if( f(r)==0 | eabs<=es )
      fprintf("Raiz = %f", r);
      break
    endif
    antigo = r;
    it = it + 1;
    if(f(a)*f(r) < 0)
      b = r;
    else
      a = r;
    endif
  endwhile
endif
