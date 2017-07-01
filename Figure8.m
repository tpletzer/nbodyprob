tspan = [0, 200*pi];
m = [1, 1, 1];
sol0 = [0.97000436; -0.24308753; -0.97000436; 0.24308753; 0; 0;
        0.466203685; 0.43236573; 0.466203685; 0.43236573; -0.93240737; -0.86473146];

[t,sol] = ode113(@(t,y) nbody(t,y,m), tspan, sol0);
hold on
figure(1)
plot(sol(:,1),sol(:,2), 'm-');
plot(sol(:,3),sol(:,4), 'b-');
plot(sol(:,5),sol(:,6), 'c-');
hold off

figure(2)
hold on
h = animatedline;
h2 = animatedline('Color','c');
h3 = animatedline('Color','m');
axis([-1.5, 1.5, -0.6, 0.6])
ntimes = size(sol, 1);
for k = 1:ntimes
    addpoints(h, sol(k,1), sol(k,2));
    addpoints(h2, sol(k,3), sol(k,4));
    addpoints(h3, sol(k,5), sol(k,6));
    drawnow
end
hold off