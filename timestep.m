%functon to calculate the variable timestep
% c is a constant (1/2 for euler sym and 1/10 for leapfrog)
%^specified by the user
function dt = timestep(y, c)
% [x1, y1, x2, y2, x3, y3, vx1, vy1, vx2, vy2, vx3, vy3]
    x1 = y(1);
    y1 = y(2);
    x2 = y(3);
    y2 = y(4);
    x3 = y(5);
    y3 = y(6);
    vx1 = y(7);
    vy1 = y(8);
    vx2 = y(9);
    vy2 = y(10);
    vx3 = y(11);
    vy3 = y(12);

    dx12 = sqrt((x2-x1)^2 + (y2-y1)^2);
    dx13 = sqrt((x3-x1)^2 + (y3-y1)^2);
    dx23 = sqrt((x3-x2)^2 + (y3-y2)^2);

    dv12 = sqrt((vx2-vx1)^2 + (vy2-vy1)^2);
    dv13 = sqrt((vx3-vx1)^2 + (vy3-vy1)^2);
    dv23 = sqrt((vx3-vx2)^2 + (vy3-vy2)^2);

    mindx = min([dx12 dx13 dx23]);
    maxdv = max([dv12 dv13 dv23 0.001]);
dt = c*0.00001/maxdv
   %dt = max([c*mindx/maxdv 0.005]);
end