% 3D Computer Vision - Exercise 3
% FIRSTNAME LASTNAME
%% Task 1. Filtering with linear and median filters (1 point)
clc
close all
clearvars

% Define f(i) and m

% Compute median filtered f(i) (do not forget boundary elements)

% Define kernel and compute linear filtered f(i) (do not forget boundary elements)

% Show results

%% Task 2. Intrinsic calibration (1 point)
clc
close all
clearvars

% For displaying images use 'montage' and 'subplot'

% Load and normalize the image

% Add Gaussian noise to the image

%% a) Gaussian filtering (Gaussian noise)

% Try out different sizes of the kernel and different sigma values

% Show results

%% b) Median filtering (Gaussian noise)

% Try out different kernel sizes

% Show results

% TODO: Answer the questions

% Add salt and pepper noise to the original image

%% a) Gaussian filtering (Salt&Pepper noise)

% Try out different sizes of the kernel and different sigma values

% Show results

%% b) Median filtering (Salt&Pepper noise)

% Try out different kernel sizes

% Show results

%% Task 3. Edge detectors (2 points)
clc
close all
clearvars

% Load the image

% Apply Gaussian filter to smooth out the image

% Find gradients (Implement the function yourself)

% Threshold the image

% Thin the image using 'bwmorph' function

% Show result

% TODO: Answer the question

% Apply Canny edge detector to the original image

% Show result and compare with the first edge image
