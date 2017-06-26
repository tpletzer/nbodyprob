function dydt = odefun(t,y)
% Two body problem circle.
%r = sqrt(y(1)^2 + y(3)^2);
dydt = [-y(2);
        y(1)];
    