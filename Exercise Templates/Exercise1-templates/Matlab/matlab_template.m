% Computer Vision - Exercise 1
% FIRSTNAME LASTNAME
%% Task 1. Image processing (1 point).
clc
close all
clearvars

% TODO: read image and show the image


%% Task 2. 3-D plots and coordinate frames (1 points).
clc
close all
clearvars


% World homogenous matrix
T_W = ...;

% Plot the world frame
plot_frame(T_W)

% Camera homogenous matrix
T_C = ...;

% Plot the camera frame
plot_frame(T_C)


%% Task 3. Transformations between frames (1 point).
clc
close all
clearvars

% TODO: Plot frames respect to world frame
% World homogenous matrix
wT_W = ...;

% Robot homogenous matrix 
wT_R = ...;

% Camera homogenous matrix
wT_C = ...;

% Plot the coordinate systems in world frame using the 'plot_frame' function 

% Set title and add annotations


%% TODO: Plot frames respect to robot frame

% Find the transformation from world to robot frame

% Find the frames in robot frame.

% Plot the coordinate systems in world frame using the 'plot_frame' function 

% Set title and add annotations


%% Plot frames respect to camera frame

% Find the transformation from world to camera frame

% Find the frames in camera frame

% Plot the coordinate systems in world frame using the 'plot_frame' function 

% Set title and add annotations



function plot_frame(T)
    % Function that plots the world frames
    
end