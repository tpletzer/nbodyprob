tspan = [0, 213];
n = 42600;
m1 = 1;
m2 = 1; 
m3 = 1;
c = 0.01;
%       [x1, y1, x2, y2, x3, y3, vx1, vy1, vx2, vy2, vx3, vy3]
sol0 = [0.97000436, -0.24308753, -0.97000436, 0.24308753, 0, 0,... 
        0.466203685, 0.43236573, 0.466203685, 0.43236573, -0.93240737, -0.86473146];

[t,sol] = euler5(@(t,y) threemass(t, y, m1, m2, m3), tspan, sol0, n);
hold on
figure(1)
plot(sol(:,1),sol(:,2), 'm-');
plot(sol(:,3),sol(:,4), 'b-');
plot(sol(:,5),sol(:,6), 'c-');
hold off

 %figure(2) 
   %dts = timestep(sol, 0.5);
   %plot(t, dts, cols1(init2));
   %hold on
   %plot([t(1), t(end)], [dts(1), dts(1)], 'r--');
%hold off