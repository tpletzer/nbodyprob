%Leapfrog integrator for 3 bodies with varuable timestep
% update position at integers and velocity at the half integers
function [t,sol] = LeapFrog4(dydt, tspan, sol0, n, tol)
dtinput = (tspan(2)-tspan(1))/n; 
dt = dtinput;
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
%change the timestep
diffvel = max(abs(vel -(vel + 0.5*acc*dt)));
dtmax = 0.9*(2*tol)/diffvel;
%0.9 is just to guarantee its a bit smaller
dt = min(dtinput, dtmax);
% velocity half time step (starting vel)
    vel = vel + 0.5*dt*acc;
% update pos for i+1
    pos = pos + vel*dt;
% need to update acc to i+1
%first updates new sol then yprime
    sol(i+1,1:n2) = pos;
    sol(i+1, n2+1:2*n2) = vel;
    yprime = dydt(t(i+1), sol(i+1,:));
%now update acc(i+1)
    acc = transpose(yprime(n2+1:2*n2));

%update the velocity using acc(i+1)
    vel = vel + 0.5*dt*acc;
%update the solution
    sol(i+1, n2+1:2*n2) = vel;

end

end
