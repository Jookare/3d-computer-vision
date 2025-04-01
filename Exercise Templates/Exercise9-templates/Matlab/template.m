% 3D Computer Vision
% Exercise 9
% FIRSTNAME LASTNAME
%% Task 1
clc
close all
clearvars

load("task1.mat")

% compute epipoles
er = ...
el = ...

% Find camera matrices Mr and Ml
Ml = ...
Mr = ...

% perform linear triangulation


% compute and print the error

%% Task 2
clc
close all
clearvars

load("task2.mat")

imgl = imread("books1.jpg");
imgr = imread("books2.jpg");

% TODO: compute epipoles once more
el = ...
er = ...

function Hr = rectify_right(er, center)
    % TODO implement rectify right
    
    % Define matrix G
    
    % Define transformation matrix T (Moves image center to (0,0,1))
    
    % Define transformation matrix R
    % Moves translated epipole (e1',e2',1) into (f,0,1)
    
    Hr = ...

end

function Hr = rectify_left(pl, pr, Mr, Hr)
    % TODO implement rectify left
    
    % TODO: Check that fundamental matrix F is of form [e_r]_x M
    % Hint: What needs to hold for this to be true?
    ...
        
end


center = 0.5*size(imgl);

% Find Hr and Hl and deshear both
Hr = rectify_right(er, center);
Hrf = deshear(imgr, Hr) * Hr;
Hl = rectify_left(points_l, points_r, Mr, Hrf);
Hlf = deshear(imgl, Hl) * Hl;

% Interpolate and warp images
[Fl, pl2] = interpolate_transform_image(Il, Hl);
[Fr, pr2] = interpolate_transform_image(Ir, Hr);
[Il1, Ir1, minLR] = warp_images(Fl, pl2, Fr, pr2);

% Plot rectified images side-by-side along with epipolar lines
% Do you notice the difference?
center = [minLR;0];
new_pl = Hl * pl;
new_pl = new_pl ./ new_pl(end,:) - center;
new_pr = Hr * pr;
new_pr = new_pr ./ new_pr(end,:) - center;

% Plot images
tiledlayout(1,2)
nexttile()
imshow(Il1)
hold on
for i = 1:size(new_pr, 2)
    x = [1 size(Il1, 2), 0];
    y = (0*x + new_pr(2,i));
    line(x, y, 'Color', 'g');
end
plot(new_pl(1,:), new_pl(2,:), 'ro')
title("Left image")

nexttile()
imshow(Ir1)
hold on
for i = 1:size(new_pr, 2)
    x = [1 size(Ir1, 2), 0];
    y = (0*x + new_pr(2,i));
    line(x, y, 'Color', 'g');
end
plot(new_pr(1,:), new_pr(2,:), 'ro')
title("Right image")

%% Questions and answers:
