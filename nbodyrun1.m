tspan = [0, 1];
m = [1];
sol0 = [0; 0; 1; 0];

[t,sol] = ode113(@(t,y) nbody(t,y,m), tspan, sol0);
plot(sol(:,1),sol(:,2), 'm-');