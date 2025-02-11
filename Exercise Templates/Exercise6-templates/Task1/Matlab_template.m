%% 3D Computer Vision - Exercise 6
% FIRSTNAME LASTNAME
%% Task 1. Detection by color thresholding (1 point).
clc
close all
clearvars

function show_images(images, titles)
    % Usage: show_images({img1, img2}, {title1, title2]})

    % Determine the number of images
    numImages = length(images);

    % Create a figure
    figure;

    % Loop through each image and display it
    for idx = 1:numImages
        subplot(1, numImages, idx);
        imshow(images{idx});
        title(titles{idx});
        axis off;
    end
end

% Read blocks image, convert to RGB and HSV variants 

% RGB thresholding

% HSV thresholding

% Display the results for the blocks image

% Read circles image, convert to RGB and HSV variants 

% RGB thresholding

% HSV thresholding

% Display the results for the circles image

%% Answer the questions: