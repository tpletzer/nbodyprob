tspan = [0, 40*pi];
m1 = 1;
m2 = 100;

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
    [t,sol] = ode113(@(t,y) array(t,y,m1,m2), tspan, sol0);
    %plotting mass 1
   figure(1) 
   plot(sol(:,1),sol(:,2), cols1(init2));
    hold on
    %plotting mass 2
    plot(sol(:,3),sol(:,4), cols2(init2),'LineWidth',4);

    figure(2) 
    energies = energy(sol);
    plot(t, energies, cols1(init2));
    hold on
    plot([t(1), t(end)], [energies(1), energies(1)], 'k--');
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

