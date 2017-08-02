% function for calculating the linear momentum(lm) in y
function lmy = py3(y, m1, m2, m3)
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
    
    lmy = m1*vy1 + m2*vy2 + m3*vy3;
 
end