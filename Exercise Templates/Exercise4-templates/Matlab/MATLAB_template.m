% 3D Computer Vision - Exercise 4
% FIRSTNAME LASTNAME
%% Task 1. Corner detection (2 points).
clc
close all
clearvars

% Read the image

% Define parameters for the corner detection

% Find corners using the Harris method

% Visualize the detected corners on the original image
% NOTE: It is easy to see if your method is working



% Modify the threshold and find corners using the Tomasi-Kanade method.

% Visualize the results for Tomasi-Kanade

% ! ANSWER to the questions

%% Task 2. Scale invariant interest points (2 points).
clc
close all
clearvars


% Read the image, convert to double. Make sure values are betwen [0, 1].

% Find extremas

% Define a threshold for extrema visualization

% Plot the extremas on top of the image


% Do same thing for the lena_bw_transformed.png and ANSWER to the questions



% (optional) define the find_extremas as function for easy use for the second lena img
function extrema = find_extremas(img, sigma)
    % Calculate the Difference of Gaussian (check cv.GaussianBlur)

    % Find the local maxima and minima
    % Initialize a list to store extrema
    extrema = []
    rows, cols = img.shape
    
    % Define the neighborhood size
    

    % Loop through the DOGs
        % Define the neighborhood around the current pixel

        % Get the min and max value in the neighborhood

        % Check if the current pixel is a local maximum or minimum
    % Return the list of extrema

end