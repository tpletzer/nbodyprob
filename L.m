% function to calculate the angular momentum at each point
%vectors must be 3-D to take the cross product
% am = angular momentum (&L)
function am = L(y, m1, m2)
  
  x1 = y(:, 1);
  y1 = y(:, 2);
  x2 = y(:, 3);
  y2 = y(:, 4);
  vx1 = y(:, 5);
  vy1 = y(:, 6);
  vx2 = y(:, 7);
  vy2 = y(:, 8);

%x1 = [x1 y1 z1];
%v1 = [vx1 vy1 vz1];
%x2 = [x2 y2 z2]; 
%v2 = [vx2 vy2 vz2];

z1 = bsxfun(@times, x1, vy1);
z2 = bsxfun(@times, y1, vx1);
z3 = bsxfun(@times, x2, vy2);
z4 = bsxfun(@times, y2, vx2);

c1 = z1 - z2;
c2 = z3 - z4;
am = m1*c1 + m2*c2;
end