% symplectic euler integrator
% sol0 are the initial conditions
function [t,sol] = euler3(dydt, tspan, sol0,n)
dt = (tspan(2)-tspan(1))/n; 
sol = zeros(n+1, size(sol0,2));
sol(1,:) = sol0;
t = linspace(tspan(1), tspan(2), n+1);
n2 = size(sol,2)/2;
for i = 1:n
 % use the assumption that the positions are the first elements of the 
 % sol vector and velocities are the second string of elements
 pos = sol(i, 1:n2);
 vel = sol(i, n2+1:2*n2);
 % evaluates the tendency for the whole dydt
 yprime = dydt(t(i), sol(i,:));
 %isolates the acceleration at time i from tendencies
 acc = transpose(yprime(n2+1:2*n2));
 %diff = abs(vel - (vel + acc*dt))
% velocity  i+1
    vel = vel + acc*dt;
% update pos for i+1 using vel(i+1)
    pos = pos + vel*dt;
%first updates new sol then yprime
    sol(i+1,1:n2) = pos;
    sol(i+1, n2+1:2*n2) = vel;
    yprime = dydt(t(i+1), sol(i+1,:));
%now update acc(i+1)
    acc = transpose(yprime(n2+1:2*n2));
    %update the solution
    sol(i+1, n2+1:2*n2) = vel;

end
end
