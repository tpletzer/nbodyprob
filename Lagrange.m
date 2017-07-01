tspan = [0, 200*pi];
m = [1, 1, 1];
sol0 = [0; 1; 1/sqrt(3); 0; -1/sqrt(3); 0;
        1; 1; 1; 1; 1; 1];

[t,sol] = ode113(@(t,y) nbody(t,y,m), tspan, sol0);
hold on
plot(sol(:,1),sol(:,2), 'm-');
plot(sol(:,3),sol(:,4), 'b-');
plot(sol(:,5),sol(:,6), 'c-');
hold off