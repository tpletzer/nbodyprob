%2D for 3 bodies
function am = L3(y, m1, m2, m3)
    x1 = y(:, 1);
    y1 = y(:, 2);
    x2 = y(:, 3);
    y2 = y(:, 4);
    x3 = y(:, 5);
    y3 = y(:, 6);
    vx1 = y(:, 7);
    vy1 = y(:, 8);
    vx2 = y(:, 9);
    vy2 = y(:, 10);
    vx3 = y(:, 11);
    vy3 = y(:, 12);

    %x1 = [x1 y1 z1];
    %v1 = [vx1 vy1 vz1];
    %x2 = [x2 y2 z2]; 
    %v2 = [vx2 vy2 vz2];
    %x3 = [x3 y3 z3];
    %v3 = [vx3 vy3 vz3];
%double check the math here 

    z1 = bsxfun(@times, x1, vy1);
    z2 = bsxfun(@times, y1, vx1);
    z3 = bsxfun(@times, x2, vy2);
    z4 = bsxfun(@times, y2, vx2);
    z5 = bsxfun(@times, x3, vy3);
    z6 = bsxfun(@times, y3, vx3);

    c1 = z1 - z2;
    c2 = z3 - z4;
    c3 = z5 - z6;

    am = m1*c1 + m2*c2 + m3*c3;

end