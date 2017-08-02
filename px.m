% function for calculating the linear momentum(lm) in x
function lmx = px(y, m1, m2)

    x1 = y(:, 1);
    y1 = y(:, 2);
    x2 = y(:, 3);
    y2 = y(:, 4);
    vx1 = y(:, 5);
    vy1 = y(:, 6);
    vx2 = y(:, 7);
    vy2 = y(:, 8);

lmx = m1*vx1 + m2*vx2;

end