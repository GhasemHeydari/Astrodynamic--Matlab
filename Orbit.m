clc;clear;close all
% By Ghasem Heydari

%% Constsnts
RE = 6378.1; % Earth's Radius

%% Initializations
r0 = [6928.14 0 0]';            % position states
v0 = [0 4.350627 6.213339]';    % velocity states

X0=[r0;v0];
%% Simulation
[t,x] = ode45('Gravity',0:1:5750,X0);

%% Results
figure
plot3(x(:,1),x(:,2),x(:,3))
title('Simulatiom of a orbit')
xlabel('x[km]')
ylabel('y[km]')
zlabel('z[km]')
grid on








