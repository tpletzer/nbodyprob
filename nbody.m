function dydt = nbody(t,y,m)
%nbodies with gravity; mass is an array for n masses
% [x1, y1, x2, y2, vx1, vy1, vx2, vy2]
%nb is the number of bodies

% nb is the number of bodies
nb = numel(m);
% number of space dimensions = nd
nd = numel(y)/(nb*2);
dydt = zeros(2*nb*nd, 1);
for i = 1:nb
  for j = 1:nd
    % index ranges from 1:nb*nd
    index = (i - 1)*nd + j;
    % xdot = v
    dydt(index) = y(index + nb*nd);
    % vdot = force
    for ip = 1:nb
      % ip is iterating over the other bodies
      if ip == i
        continue
      end
      % xip is the j-th coordinate of body ip
      xip = y((ip - 1)*nd + j);
      % xi is the j-th coordinate of body i
      xi = y((i - 1)*nd + j);
      % compute the distance^3 between body ip and body i
      r3 = 0.0;
      for jp = 1:nd
        distance = y((ip - 1)*nd + jp) - y((i - 1)*nd + jp);
        r3 = r3 + distance^2;
      end
      r3 = sqrt(r3)^3;
      % add the contribution from body ip
      %since below is the velocity we must add nb*nd
      dydt(index + nb*nd) = dydt(index + nb*nd) + m(ip)*(xip - xi)/r3;
    end
  end
end


end