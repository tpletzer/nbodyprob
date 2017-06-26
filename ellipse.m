tspan = [0, 700*pi];
%loop 
init_cond = [1, 0, 0, 1;
             1, 0, 0, 0.9;
             1, 0, 0, 1.1;
             1.1, 0, 0.2, 1];
cols = ['c-', 'k.', 'm--', 'r-'];
ninit = size(init_cond, 1);

for init = 1:ninit
    sol0 = init_cond(init,:);
    [t,sol] = ode113(@gravity, tspan, sol0);
    plot(sol(:,1),sol(:,2), cols(init));
    hold on
end
plot(0, 0, 'r*')
title('Effect of Changing Vy')
xlabel('x')
ylabel('y')
axis('image')
hold off
% start with y(4)=1 original
% change to 1.01 then 1.1 to see solution change