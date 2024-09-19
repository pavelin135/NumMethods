function r=sum(x, nmax)
  
  f22 = log(1+x^2) + x*sin(x);
  
  errors_dir    = zeros(nmax, 1);
  errors_dir_lg = zeros(nmax, 1);
  
  errors_inv    = zeros(nmax, 1);
  errors_inv_lg = zeros(nmax, 1);
  
  errors_gor    = zeros(nmax, 1);
  errors_gor_lg = zeros(nmax, 1);
  
  for n = 1 : nmax
    errors_dir(n)     = f22 - f22_dir(x, n);
    errors_dir_lg(n)  = log10(abs(f22 - f22_dir(x, n)));
  endfor

  for n = 1 : nmax
    errors_inv(n)     = f22 - f22_inv(x, n);
    errors_inv_lg(n)  = log10(abs(f22 - f22_inv(x, n)));
  endfor
  
  for n = 1 : nmax
    errors_gor(n)     = f22 - f22_gor(x, n);
    errors_gor_lg(n)  = log10(abs(f22 - f22_gor(x, n)));
  endfor
  
  figure(1)
  plot(errors_dir,'r*')
  hold on
  plot(errors_inv,'k:s')
  hold on
  plot(errors_gor, 'b--x')
  grid on
  
  figure(2)
  plot(errors_dir_lg, 'r*')
  hold on
  plot(errors_inv_lg, 'k:s')
  hold on
  plot(errors_gor_lg, 'b--x')
  grid on
  
  
end
