function et = energy3(y, m1, m2, m3)
    %kinetic energy
    % [x1, y1, x2, y2, vx1, vy1, vx2, vy2]
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

    r12 = sqrt((x2-x1).^2 + (y2-y1).^2);
    r13 = sqrt((x3-x1).^2 + (y3-y1).^2);
    r23 = sqrt((x3-x2).^2 + (y3-y2).^2);

    ek = (m1*(vx1.^2 + vy1.^2) + m2*(vx2.^2 + vy2.^2) + m3*(vx3.^2 + vy3.^2))/2;
    %double check the -1/2
    ep = -((m1*m2/r12) + (m1*m3/r13) + (m2*m3/r23));

    et = ek + ep;
    
end