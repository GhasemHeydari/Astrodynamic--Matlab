% By Ghasem Heydari
% This function is simulation orbit of satellite 
% You can use this function in the integral approach
% for example: 
%$              [t, x] = ode45(@Gravity, tspan, initial, options);

function xdot = Gravity( ~,x )
% global Cb
mu = 398600.4418;

xdot(1:3) = x(4:6);
xdot(4:6) = -mu*x(1:3)/norm(x(1:3))^3; 
xdot = xdot';

end
