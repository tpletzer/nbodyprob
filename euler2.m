% Euler integrator for 2 bodies
% sol0 are the initial conditions
function [t,sol] = euler2(dydt, tspan, sol0,n)

dt = (tspan(2)-tspan(1))/n; 
sol = zeros(n+1, size(sol0,2));
sol(1,:) = sol0;
t = linspace(tspan(1), tspan(2), n+1);
for i = 1:n
yi = dydt(t(i), sol(i, :));
transpose(yi);
size(dydt(t(i), sol(i, :)));
    sol(i+1, :) = sol(i, :) + transpose(yi)*dt;
end
end

