function ydot = testfunc(t, y) 

ydot = zeros(size(y))
ydot(1, 1) = y(1, 2);
ydot(1, 2) = -y(1, 1);
end

tspan = [0, 2*pi];
y0 = [1., 0.];

sol = ode113(@testfunc, tspan, y0);

plot(sol(:, 1), sol(:, 2), 'b-')
