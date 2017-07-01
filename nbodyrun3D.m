% top row initial positions and the bottom is velocities of sol0

tspan = [0, 20*pi];
m = [1, 100];
sol0 = [1; 0; 0; 0; 0; 0;
        0; 10; 0; 0; 0; 0];
figure(1)
[t,sol] = ode45(@(t,y) nbody(t,y,m), tspan, sol0);
plot3(sol(:,1),sol(:,2), sol(:,3), 'm-');
title('ode45')

figure(2)
[t,sol] = ode23(@(t,y) nbody(t,y,m), tspan, sol0);
plot3(sol(:,1),sol(:,2), sol(:,3), 'b-');
title('ode23')

figure(3)
[t,sol] = ode113(@(t,y) nbody(t,y,m), tspan, sol0);
plot3(sol(:,1),sol(:,2), sol(:,3), 'c-');
title('ode113')
