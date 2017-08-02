tspan = [0, 10*pi];
m1 = 1;
m2 = 100;
n = 10000;

%loop        [x1, y1, x2, y2, vx1, vy1, vx2, vy2]
init_cond2 = [1,  0,  0,  0,   0,   10,   0,   0;
              %1, 0,  0,  0,   0,  0.9,  0,   0;
              %1, 0,  0,  0,   0,  1.1,  0,   0;
                ];
cols1 = ['b-', 'k.', 'm--', 'r-'
                    ];
cols2 = ['r-', 'm-'];
ninit = size(init_cond2, 1);
hold off
for init2 = 1:ninit
    sol0 = init_cond2(init2,:);
    [t,sol] = LeapFrog2(@(t,y) twomass(t,y,m1,m2), tspan, sol0,n);
    %plotting mass 1
   figure(1) 
   plot(sol(:,1),sol(:,2), cols1(init2));
    hold on
    %plotting mass 2
    plot(sol(:,3),sol(:,4), cols2(init2),'LineWidth',4);

   figure(2) 
   energies = energy(sol, 1, 100);
   plot(t, energies, cols1(init2));
   hold on
   plot([t(1), t(end)], [energies(1), energies(1)], 'k--');

   figure(3) 
   lmxs = px(sol, 1, 100);
   plot(t, lmxs, cols1(init2));
   hold on
   plot([t(1), t(end)], [lmxs(1), lmxs(1)], 'r--');
    
   figure(4)
   lmys = py(sol, 1, 100);
   plot(t, lmys, cols1(init2));
   hold on
   plot([t(1), t(end)], [lmys(1), lmys(1)], 'r--');

   figure(5)
   ams = L(sol, 1, 100);
   plot(t, ams, cols1(init2));
   hold on
   plot([t(1), t(end)], [ams(1), ams(1)], 'r--');
end
figure(1) 
plot(0, 0, 'r*')
plot(1, 0, 'b*')
title('Effect of Change')
xlabel('x')
ylabel('y')
axis('image')
hold off

figure(2) 
title('Testing conservation of energy')
xlabel('time')
ylabel('total energy')
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
