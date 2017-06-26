tspan = [0 5];
y0 = 0;
[t,y] = ode113(@(t,y) 2*t, tspan, y0);
plot(t,y,'-o')
%first practice with ode113


