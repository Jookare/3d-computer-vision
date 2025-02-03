%% 3D Computer Vision - Exercise 5
% FIRSTNAME LASTNAME

%% Task 1. Line fitting with gradient method (2 points)

% Load data

% Define functions computing partial derivatives
function da = daf(x, y, a, b, c)
    da = ...;
end

function db = dbf(x, y, a, b, c)
    db = ...;
end

function dc = dcf(x, y, a, b, c)
    dc = ...;
end

% Code the gradient descent fitting, find some good hyperparameters

% Show results

%% Task 2. RANSAC (2 points)

% Option a)
% Define f as inline function and plot using Matlab's fimplicit function

% Option b)
function visualize_fit(x, y, a, b, c, d)
    % Use this function to draw points and the fitted conical section
    %
    % Args:
    %     x (array): X coordinates of the data
    %     y (array): Y coordinates of the data
    %     a (array): a parameter
    %     b (array): b parameter
    %     c (array): c parameter
    %     d (array): d parameter

    figure; hold on
    scatter(x, y, 1);

    xv = linspace(-100, 100, 400);
    yv = linspace(-100, 100, 400);
    [xc, yc] = meshgrid(xv, yv);
    zc = a * xc.^2 + a * yc.^2 + b * xc + c * yc + d;
    contour(xc, yc, zc, [0, 0], 'red');
    axis equal;
    hold off;
end

%% a)

% Load data

% Show data

%% TODO: answer the question

%% b)

% Define function for algebraic fitting
function [a, b, c, d] = algebraic_fitting(x, y)
    X = ...;
    [U, S, V] = svd(X);
    a = ...;
    b = ...;
    c = ...;
    d = ...;
end

% Try the algebraic fitting on the data and show the result

%% TODO: answer the question

%% c)

% Implement RANSAC

%% d)

% Apply RANSAC to the points

% Show results

%% TODO: answer the question
