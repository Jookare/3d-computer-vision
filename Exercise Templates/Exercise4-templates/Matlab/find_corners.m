function corners = find_corners(img, N, t, k)
    % FIND_CORNERS Detects corners in an image using Harris or Tomasi-Kanade method.
    %   img: Input image, grayscale and of type double.
    %   N: Size of the local neighborhood
    %   t: Threshold
    %   k: Harris detector parameter (optional)

    % Determine the method based on the value of k
    if (nargin < 4)
        method = 'Tomasi-Kanade';
    else
        method = 'Harris';
    end


    % Define kernels for computing image gradients

    % Compute image gradients using convolution

    % Initialize output variables
    [row, col] = size(img);

    % Iterate over each neighborhood in the image
    for i = N+1 : row-N
        for j = N+1 : col-N
            % Calculate the Structure tensor

            % Depending on the method
            if strcmp(method, 'Tomasi-Kanade')
                % TODO: Compute eigenvalues and check threshold condition
            else
                % TODO: Compute Harris corner measure and check threshold condition
            end
        end
    end

    % Sort the values from largest to smallest

    % Perform non-maximum suppression

    % Return the corner (x, y) points
    corners = ...
end