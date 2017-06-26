function ydot = testfunc(t, y) 

size(y)
y
ydot = zeros(size(y));
ydot(1, 1) = y(1, 2);
ydot(1, 2) = -y(1, 1);
end
