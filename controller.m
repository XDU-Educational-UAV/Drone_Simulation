function [F, M] = controller(t, state, des_state, params)
%CONTROLLER  Controller for the quadrotor
%
%   state: The current state of the robot with the following fields:
%   state.pos = [x; y; z], state.vel = [x_dot; y_dot; z_dot],
%   state.rot = [phi; theta; psi], state.omega = [p; q; r]
%
%   des_state: The desired states are:
%   des_state.pos = [x; y; z], des_state.vel = [x_dot; y_dot; z_dot],
%   des_state.acc = [x_ddot; y_ddot; z_ddot], des_state.yaw,
%   des_state.yawdot
%
%   params: robot parameters

%   Using these current and desired states, you have to compute the desired
%   controls


% =================== Your code goes here ===================
pDes = 0; %Desired roll velocity
qDes = 0; %Desired pitch velocity

Kp_x = 200; %6;%10; %6; %10;
Kd_x = 15; %6; %6; %10;

Kp_y = Kp_x;
Kd_y = Kd_x;

Kp_z = 200; %400;
Kd_z = 15; %15; %13; %20;

Kp_phi = 20; %100;%0.0203; %1000;
Kd_phi = 0.5; %2; %0.004; % 25;

Kp_theta = Kp_phi;
Kd_theta = Kd_phi;

Kp_psi = 20; %100; %100; %5;
Kd_psi = 0.5; %2; %2; %5;

r1CommAcc = des_state.acc(1) + Kd_x*(des_state.vel(1) - state.vel(1)) + Kp_x*(des_state.pos(1) - state.pos(1));
r2CommAcc = des_state.acc(2) + Kd_y*(des_state.vel(2) - state.vel(2)) + Kp_y*(des_state.pos(2) - state.pos(2));
r3CommAcc = des_state.acc(3) + Kd_z*(des_state.vel(3) - state.vel(3)) + Kp_z*(des_state.pos(3) - state.pos(3));

phiDes   = 1/params.gravity * (r1CommAcc * sin(des_state.yaw) - r2CommAcc * cos(des_state.yaw));
thetaDes = 1/params.gravity * (r1CommAcc * cos(des_state.yaw) + r2CommAcc * sin(des_state.yaw));

% Thrust -------------------------------------------------------------------------------------------
F = params.mass * (r3CommAcc + params.gravity);


% Moment -------------------------------------------------------------------------------------------
u2Phi   = Kp_phi * (phiDes - state.rot(1)) + Kd_phi * (pDes - state.omega(1));
u2Theta = Kp_theta * (thetaDes - state.rot(2)) + Kd_theta * (qDes - state.omega(2));
u2Psi   = Kp_psi * (des_state.yaw - state.rot(3)) + Kd_psi * (des_state.yawdot - state.omega(3));

M = [u2Phi;
    u2Theta;
    u2Psi];

% =================== Your code ends here ===================

end
