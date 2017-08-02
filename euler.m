% Euler integrator for 2 bodies
% r = x1 - x2
% let G = 1 and m2 + m1 = 2

clear;
% define time step and tend
dt = 0.01;
tf = 1.0;
% arrays for initial conditions
tvec = 0:dt:tf;
rvec = 
for i = 1:steps -1

t(i+1) = t(i) + dt;
r(i+1) = r(i) + v(i)*dt;
v(i+1) = v(i) + a(i)*dt;

end