function dydt = odefun(t,y)
% Two body problem circle.
r = sqrt(y(1)^2 + y(2)^2);
dy = [y(4); 
    0;
    -y(1);
    0];