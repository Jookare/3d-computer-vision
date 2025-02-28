% Computer Vision - Exercise 7
% FIRSTNAME LASTNAME

%% Task 1

%% a)
% Load the data
% TODO: load file cube_points.mat

% Define function to plot the projection
function plot_projection(points, connecting_indices)
    % TODO: define function to plot the cube
    % you can use connecting_indices for both 2D and 3D plotting, it still works
    
end

% TODO: plot the 3D cube and the projection nicely side by side
% you can use MATLAB's subplot for both

%% b)
function M = calibrate(points2d, points3d)
    % TODO: implement calibration
    
end

% TODO: perform calibration and apply it to the 3D points

%% c)
% TODO: plot the results

% TODO: calculate reprojection error and print it

%% d)
function M = calibrate_norm(points2d, points3d)
    % TODO: implement normalization
    
    normalized_2d_pts = % ...
    normalized_3d_pts = % ...
    
    M = calibrate(normalized_2d_pts, normalized_3d_pts);
    
    % TODO: do not forget to denormalize
    denormalized_M = % ...
    
    return denormalized_M;
end

%% e)
% TODO: load file cube_points_noisy.mat

% TODO: plot the noisy 3D cube and noisy projection side by side

% TODO: calibrate without normalization

% TODO: apply the calculated transformation

% TODO: calculate the error

% TODO: calibrate with normalization

% TODO: apply the calculated transformation

% TODO: calculate the error

% TODO: compare the two results

% ⚠️ TODO: Answer the questions ⚠️



%% Task 2
function [R, Q] = rq(M)
    [Q, R] = qr(transpose(flipud(M)));
    Q = flipud(transpose(Q));
    R = rot90(transpose(R), 2);
end


function [K, R, C] = decompose_projection(M)
    % TODO: implement the decomposition
    
    
end

% TODO: use the matrix created in Task 1
M = % ...
[K, R, C] = decompose_projection(M);

M_reconstructed = % ...

if all(abs(M - M_reconstructed) < 1e-10, 'all')
    disp('The result is correct.');
else
    disp('🚨NOT CORRECT🚨!');
end

% Function to plot coordinate frames
function plot_frame(T, name)
    % Function that plots the world frames
    l = 0.25;
    quiver3(ax, T(1,4), T(2,4), T(3,4), T(1,1), T(2,1), T(3,1), l, 'r');
    quiver3(ax, T(1,4), T(2,4), T(3,4), T(1,2), T(2,2), T(3,2), l, 'g');
    quiver3(ax, T(1,4), T(2,4), T(3,4), T(1,3), T(2,3), T(3,3), l, 'b');
    
    text(ax, T(1,4) + T(1,1)*l, T(2,4) + T(2,1)*l, T(3,4) + T(3,1)*l, [name 'X']);
    text(ax, T(1,4) + T(1,2)*l, T(2,4) + T(2,2)*l, T(3,4) + T(3,2)*l, [name 'Y']);
    text(ax, T(1,4) + T(1,3)*l, T(2,4) + T(2,3)*l, T(3,4) + T(3,3)*l, [name 'Z']);
end

% TODO: plot the coordinate frame together with the cube
