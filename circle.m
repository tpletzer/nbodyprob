y0 = [1.; 0];
tspan = [0, 200*pi];
[t,y] = ode113(@odefun, tspan, y0);

plot(y(:,1),y(:,2), 'c-');

texact = linspace(0, 2*pi, 100);
xexact = cos(texact); 
yexact = sin(texact);
hold on
plot(xexact, yexact, 'm-', 'LineWidth',5)
axis('image')