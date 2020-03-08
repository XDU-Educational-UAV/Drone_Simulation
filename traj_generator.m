function [ desired_state ] = traj_generator(t, state, waypoints)
% TRAJ_GENERATOR: Generate the trajectory passing through all
% positions listed in the waypoints list
%
% NOTE: This function would be called with variable number of input arguments.
% During initialization, it will be called with arguments
% trajectory_generator([], [], waypoints) and later, while testing, it will be
% called with only t and state as arguments, so your code should be able to
% handle that. This can be done by checking the number of arguments to the
% function using the "nargin" variable, check the MATLAB documentation for more
% information.
%
% t,state: time and current state (same variable as "state" in controller)
% that you may use for computing desired_state
%
% waypoints: The 3xP matrix listing all the points you much visited in order
% along the generated trajectory
%
% desired_state: Contains all the information that is passed to the
% controller for generating inputs for the quadrotor
%
% It is suggested to use "persistent" variables to store the waypoints during
% the initialization call of trajectory_generator.


%% Example code:
% Note that this is an example of naive trajectory generator that simply moves
% the quadrotor along a stright line between each pair of consecutive waypoints
% using a constant velocity of 0.5 m/s. Note that this is only a sample, and you
% should write your own trajectory generator for the submission.

persistent waypoints0 traj_time allCoeffs multFact time d0
if nargin > 2
    waypoints0 = waypoints';
    n = size(waypoints0, 1) - 1;
    multFact = 8;
    
    
    avgSpeed = 2.0; %m/sec
    d = waypoints(:,2:end) - waypoints(:,1:end-1);
    d0 = 1/(avgSpeed) * sqrt(d(1,:).^2 + d(2,:).^2 + d(3,:).^2);
    
    
    %time = 10;
    %traj_time = [0:cumsum(d0)];
    traj_time = [0, cumsum(d0)];
    
    
    A = zeros(multFact * n); % Row format is a11, a12,...a21...a8n
    b = zeros(multFact * n, 3);
    
    % Set up waypoint values in b matrix
    numPts = size(waypoints0,1);
    b(1,:) = waypoints0(1,:);
    rowP = 1;
    for iPosPt = 2:numPts-1
        row  = rowP + 1;
        rowP = row + 1;
        
        b(row,:)  = waypoints0(iPosPt,:);
        b(rowP,:) = waypoints0(iPosPt,:);
    end
    b(rowP+1,:) = waypoints0(end,:);
    
    % Specify constraint values for A matrix
    posCon = [1 0 0 0 0 0 0 0;
        1 1 1 1 1 1 1 1];
    
    drvtvCon = [0 1 2 3 4 5 6 7;
        0 0 2 6 12 20 30 42;
        0 0 0 6 24 60 120 210];
    
    continuousCon = [0 1 2 3 4 5 6 7 0 -1 0 0 0 0 0 0;
        0 0 2 6 12 20 30 42 0 0 -2 0 0 0 0 0;
        0 0 0 6 24 60 120 210 0 0 0 -6 0 0 0 0;
        0 0 0 0 24 120 360 840 0 0 0 0 -24 0 0 0;
        0 0 0 0 0 120 720 2520 0 0 0 0 0 -120 0 0;
        0 0 0 0 0 0 720 5040 0 0 0 0 0 0 -720 0];
    
    % Waypoint constraints in A
    rowEnd = 0;
    for iPos = 1:n
        colStart = (iPos-1)*multFact + 1;
        colEnd   = colStart + multFact - 1;
        rowStart = rowEnd + 1;
        rowEnd   = rowStart + 1;
        A(rowStart:rowEnd,colStart:colEnd) = posCon;
    end
    
    % Start position at rest constraint (t=0) (velocity, acceleration, jerk)
    nxtRow = rowEnd;
    for iDrv = 1:3
        nxtRow = nxtRow + 1;
        A(nxtRow, iDrv+1) = 1;
    end
    
    % End position at rest constraint (t=T) (velocity, acceleration, jerk)
    startRow = (nxtRow + 1);
    endRow   = startRow + size(drvtvCon,1) - 1;
    startCol = (n-1) * multFact + 1;
    endCol   = size(A,2);
    
    A(startRow:endRow,startCol:endCol) = drvtvCon;
    
    % Continuous first through sixth derivative constraints (@ waypoints)
    colEnd = 0;
    for iCon = 1:n-1
        startRow = endRow + 1;
        endRow   = startRow + size(continuousCon,1) - 1;
        colStart = colEnd + 1;
        colEnd   = colStart + size(continuousCon,2) - 1;
        A(startRow:endRow,colStart:colEnd) = continuousCon;
        colEnd = multFact * iCon;
    end
    
    allCoeffs = A\b;
    
else
    if(t > traj_time(end))
        desired_state.pos = waypoints0(end,:)';
        desired_state.vel = zeros(3,1);
        desired_state.acc = zeros(3,1);
    else
        t_index = find(traj_time <= t,1,'last');
        
        if(t == 0)
            desired_state.pos = waypoints0(1,:)';
            desired_state.vel = zeros(3,1);
            desired_state.acc = zeros(3,1);
        else
            if(t_index > 1)
                t = t - traj_time(t_index);
            end
            scale = t/d0(t_index);
            %scale = t / time;
            
            coeffs = allCoeffs(((t_index-1)*multFact + 1): (t_index*8), :);
            desired_state.pos = ([1, scale, scale^2, scale^3, scale^4, scale^5, scale^6, scale^7] * coeffs)';
            desired_state.vel = ([0, 1, 2*scale, 3*scale^2, 4*scale^3, 5*scale^4, 6*scale^5, 7*scale^6] * coeffs)';
            desired_state.acc = ([0, 0, 2, 6*scale, 12*scale^2, 20*scale^3, 30*scale^4, 42*scale^5] * coeffs)';
        end
    end
    desired_state.yaw = 0;
    desired_state.yawdot = 0;
end
%


%% Fill in your code here

% desired_state.pos = zeros(3,1);
% desired_state.vel = zeros(3,1);
% desired_state.acc = zeros(3,1);
% desired_state.yaw = 0;
end

