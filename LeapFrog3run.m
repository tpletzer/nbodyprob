tspan = [0, 0.68*pi];
n = 10000;
m1 = 1;
m2 = 1; 
m3 = 1;
sol0 = [0.97000436, -0.24308753, -0.97000436, 0.24308753, 0, 0,... 
        0.466203685, 0.43236573, 0.466203685, 0.43236573, -0.93240737, -0.86473146];

[t,sol] = LeapFrog2(@(t,y) threemass(t, y, m1, m2, m3), tspan, sol0, n);
hold on
figure(1)
plot(sol(:,1),sol(:,2), 'm-');
plot(sol(:,3),sol(:,4), 'b-');
plot(sol(:,5),sol(:,6), 'c-');
hold off

figure(2) 
   energies = energy3(sol, 1, 1, 1);
   plot(t, (energies-energies(1))./energies(1), cols1(init2));
   hold on
   %plot([t(1), t(end)], [energies(1), energies(1)], 'k--');

   figure(3) 
   lmxs = px3(sol, 1, 1, 1);
   plot(t, lmxs, cols1(init2));
   hold on
   plot([t(1), t(end)], [lmxs(1), lmxs(1)], 'r--');

figure(4)
   lmys = py3(sol, 1, 1, 1);
   plot(t, lmys, cols1(init2));
   hold on
   plot([t(1), t(end)], [lmys(1), lmys(1)], 'r--');

  figure(5)
   ams = L3(sol, 1, 1, 1);
   plot(t, ams, cols1(init2));
   hold on
   plot([t(1), t(end)], [ams(1), ams(1)], 'r--');

%figure(2)
%hold on
%h = animatedline;
%h2 = animatedline('Color','c');
%h3 = animatedline('Color','m');
%axis([-1.5, 1.5, -0.6, 0.6])
%ntimes = size(sol, 1);
%for k = 1:ntimes
    %addpoints(h, sol(k,1), sol(k,2));
    %addpoints(h2, sol(k,3), sol(k,4));
    %addpoints(h3, sol(k,5), sol(k,6));
    %drawnow
%end
%hold off
figure(2) 
title('Testing conservation of energy')
xlabel('time')
ylabel('\Delta E')
hold off
figure(3) 
title('Testing conservation of (x) linear momentum')
xlabel('time')
ylabel('p (x direction)')
hold off
figure(4) 
title('Testing conservation of (y) linear momentum')
xlabel('time')
ylabel('p (y direction)')
hold off
figure(5) 
title('Testing conservation of angular momentum')
xlabel('time')
ylabel('L')
hold off