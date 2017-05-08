function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%


for i = 1:K
    c_i = idx==i; %get a m-dim vector of i-st centroid [0 ; 0; 1; ... 1; 0]
    n_i = sum(c_i); % summary 1 to count i-st centroid items 
    c_i_matrix = repmat(c_i,1,n); 
    X_c_i = X .* c_i_matrix;% mxn .* mxn to make non i-st items as zero
    centroids(i,:) = sum(X_c_i) ./ n_i; % get an 1xn result as new centroid K
end


% =============================================================


end

