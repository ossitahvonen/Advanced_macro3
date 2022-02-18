var pi, y_tilde, i, r_n, W;
varexo eps;

parameters beta,
    sigma,
    rho,
    kappa,
    sigma_r2,
    phi_pi,
    M,
    rho_r,
    rho_i,
    e;


rho = 0.02;
rho_r = 0.85;
sigma = 2;
kappa = 0.1;
beta = 1/(1.025^0.25);
sigma_r2 = 0.01;
phi_pi = 1.5;
M = 1.2;
rho_i = 0.9;

%set m=e/(e-1) so that e = m/(m-1)
e = M/(M-1);

model;
    r_n = rho_r*(r_n(-1)-rho) + rho + eps; 
    %phillips curve
    pi = beta*pi(+1) + kappa*y_tilde;
    %output gap/?? -rule
    y_tilde = y_tilde(+1)-(1/sigma) * (i + pi(+1) - r_n);


    %mon policy rule No 1
    i = rho + phi_pi*pi;

    %mon policy rule No 2
    %i=rho + phi_pi*pi(+1);

    %mon policy rule No 3
    %i = (1-rho_i) * (rho + phi_pi * pi(+1)) + rho_i * i(-1);

    %mon policy rule No 4
    %i = rho + phi_pi*(pi + pi(-1))/2;

    %welfare criterion:   
    W = (-1/2)*kappa*(y_tilde(+1)^2) + e*pi;

end;

initval;
   y_tilde = 0;
   pi = 0.01;
   i = 0.02;
   r_n = 0;
end;

steady;
%check;

%irf
%shocks;
%    var eps;
%    stderr 0.01;
%end;

%stoch_simul(order=1);



