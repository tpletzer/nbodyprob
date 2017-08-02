function et = energy(y, m1, m2)
    %kinetic energy
    % [x1, y1, x2, y2, vx1, vy1, vx2, vy2]
    x1 = y(:, 1);
    y1 = y(:, 2);
    x2 = y(:, 3);
    y2 = y(:, 4);
    vx1 = y(:, 5);
    vy1 = y(:, 6);
    vx2 = y(:, 7);
    vy2 = y(:, 8);

    r12 = sqrt((x2-x1).^2 + (y2-y1).^2);

    ek = (m1*(vx1.^2 + vy1.^2) + m2*(vx2.^2 + vy2.^2))/2;

    ep = -m1*m2./r12;

    et = ek + ep;
    
end
