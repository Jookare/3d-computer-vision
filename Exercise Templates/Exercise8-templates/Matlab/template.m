% Computer Vision - Exercise 8
% FIRSTNAME LASTNAME

%% Task 1
clc
close all
clearvars

% TODO: Find points from images 

% One option is to use ginput
points = ginput(9)


% TODO: expand and normalize points
function [T, np] = norm_points(p)

end


% TODO: Build matrix A


% TODO: Compute F from A


% TODO: Compute F_dash from F. Make sure you know what Matlab's SVD returns


% TODO Denormalize and test value using ninth point


%% Task 2
clc
close all
clearvars

% TODO Use F to find left and right epipoles

% TODO Plot the ninth point to the left image and the right epipolar line to the right image
% Find the line coefficients from F @ el and plot the line

tiledlayout(1,2)
nexttile()
imshow(img_l)
hold on
title("Left image")

nexttile()
imshow(img_r)
hold on
title("Right image")
