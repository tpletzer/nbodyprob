tspan = [0, 2*pi];
y0 = [1., 0.];

sol = ode113(@testfunc, tspan, y0);

plot(sol(:, 1), sol(:, 2), 'b-')
