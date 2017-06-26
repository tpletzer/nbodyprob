function dydt = gravity(t,y)
% Two body problem  with gravity
r3 = (y(1)^2 + y(2)^2)^(3/2);
dydt = [y(3);
        y(4);
        -2*y(1)/(r3);
        -2*y(2)/(r3)];