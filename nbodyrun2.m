tspan = [0, 2*pi];
m = [1, 100];
sol0 = [1; 0; 0; 0;
        0; 10; 0; 0];

[t,sol] = ode113(@(t,y) nbody(t,y,m), tspan, sol0);
figure(1)
plot(sol(:,1),sol(:,2), 'm-');

figure(2)
hold on
h = animatedline;
h2 = animatedline('Color','c');
axis([-2, 2, -2, 2])
ntimes = size(sol, 1);
for k = 1:ntimes
    addpoints(h, sol(k,1), sol(k,2));
    addpoints(h2, sol(k,3), sol(k,4));
    drawnow
end
hold off