function dydt = twomass(t,y,m1,m2)
% [x1, y1, x2, y2, vx1, vy1, vx2, vy2]
x1 = y(1);
y1 = y(2);
x2 = y(3);
y2 = y(4);
vx1 = y(5);
vy1 = y(6);
vx2 = y(7);
vy2 = y(8);

r3 = ((x1-x2)^2 + (y2-y1)^2)^(3/2);

dydt = [vx1;
        vy1;
        vx2;
        vy2;
        m2*(x2-x1)/r3;
        m2*(y2-y1)/r3;
        m1*(x1-x2)/r3;
        m1*(y1-y2)/r3];
end

