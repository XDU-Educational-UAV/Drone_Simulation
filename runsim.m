close all;
clear;

addpath('utils');

%% pre-calculated trajectories
%trajhandle = @traj_line;
%trajhandle = @traj_helix;

%% Trajectory generation with waypoints
%% You need to implement this
trajhandle = @traj_generator;
%trajhandle = @traj_generator_avg_speed;
waypoints = [10	157	12
28.866932	160.15277	17.839375
47.733006	163.30595	23.681309
66.598694	166.45987	29.524136
85.329788	169.31131	35.912052
101.71348	169.45889	46.566086
107.46576	162.35634	64.227562
113.62782	155.64474	81.990135
122.48891	150.88698	99.233261
134.22078	146.72316	114.84607
148.29561	144.44655	128.83435
164.24307	143.80643	140.85469
181.7706	144.4435	150.40746
200.31474	146.78024	157.45782
219.39352	150.57629	162.01537
238.58948	155.76103	163.94942
257.53445	162.07225	163.27066
275.84262	169.39832	160.05524
293.16843	177.63956	154.44116
310.23627	186.05743	148.29166
338.4025	199.95438	138.168
358.90497	210.03397	130.82298];
waypoints = (waypoints./10)';
% waypoints = [0    0   0;
%              1    1   1;
%              2    0   2;
%              3    -1  1;
%              4    0   0]';
%          waypoints = [0    0   0;
%              10    10   10]';
% waypoints = [0    0   0;
%              1    2   1;
%              2    0   2;
%              3    -1  1;
%              4    0   0;
%              5  1  1;
%              6 2 2;
%              6.5 3 2]';
% waypoints = [0    2   0;
%              1    2   1;
%              2    0   2;
%              3    -1  1;
%              4    2   3;
%              5  4  5;
%              5 5 5;
%              5 5 3;
%              5 5 0]';
trajhandle([],[],waypoints);


%% controller
controlhandle = @controller;


% Run simulation with given trajectory generator and controller
% state - n x 13, with each row having format [x, y, z, xdot, ydot, zdot, qw, qx, qy, qz, p, q, r]
%[t, state] = simulation_3d(trajhandle, controlhandle);
[t, state, QP] = simulation_3d_new(trajhandle, controlhandle);

