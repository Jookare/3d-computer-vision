% 3D Computer Vision - Exercise 2
% FIRSTNAME LASTNAME
%% Task 1. Intrinsic calibration (1 point).
clc
close all
clearvars

% TODO: Define principle point, effective pixel size, focal length

% TODO: Define point in camera frame

% TODO: Compute camera frame coordinates (x, y) 

% TODO: Compute the pixel coordinates

% Format the vector as a string
cP_str = sprintf('[%d, %d, %d]', cP(1), cP(2), cP(3));

% Print the message
fprintf('Pixel coordinates of projection point: [%.0f, %.0f]\n', nx, ny);

%% Task 2. Calibrated projection and weak perspective camera (2 points).
clc
close all
clearvars

% TODO: Define principle point, effective pixel size, focal length

% TODO a) Plot points and camera frame 

% b) Camera matrix
% TODO: Calculate projection matrix, points in projection plane, and image coordinates.

% c) Plot the color projection

% d) Weak perspective camera

% TODO: Calculate projection matrix, points in projection plane, image coordinates, and plot


%% Task 3. Projective points (1 point).
clc
close all
clearvars

% Define the symbolic variable f
syms f

% TODO Construct the projection matrix, and calculate points in projection 
% plane, and image coordinates