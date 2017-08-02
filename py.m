% function for calculating the linear momentum(lm) in y
function lmy = py(y, m1, m2)
   
    x1 = y(:, 1);
    y1 = y(:, 2);
    x2 = y(:, 3);
    y2 = y(:, 4);
    vx1 = y(:, 5);
    vy1 = y(:, 6);
    vx2 = y(:, 7);
    vy2 = y(:, 8);

lmy = m1*vy1 + m2*vy2; 
end