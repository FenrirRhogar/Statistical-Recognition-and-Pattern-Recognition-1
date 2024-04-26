function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.


% ADD YOUR CODE
% Calculate the mean of each feature
mu = sum(X) / size(X, 1);

% Calculate the standard deviation of each feature
sigma = sqrt(sum((X - mu) .^ 2) / (size(X, 1) - 1));

% Normalize each feature
X_norm = (X - mu) ./ sigma;
% ============================================================

end
