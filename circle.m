texact = linspace(0, 2*pi, 10000000);
xexact = cos(texact); 
yexact = sin(texact);
plot(xexact, yexact, 'k-', 'LineWidth',1)
xexact(pi)
axis('image')
