function [ eigenval, eigenvec, order] = myPCA(X)
%PCA Run principal component analysis on the dataset X
%   [ eigenval, eigenvec, order] = mypca(X) computes eigenvectors of the autocorrelation matrix of X
%   Returns the eigenvectors, the eigenvalues (on diagonal) and the order 
%

% Useful values
[m, n] = size(X);

% Make sure each feature from the data is zero mean
X_centered = X - mean(X);

% ====================== YOUR CODE HERE ======================
%
% Compute the covariance matrix
C = (1/m) * (X_centered') * X_centered;

% Compute the eigenvectors and eigenvalues
[eigenvec, eigenval] = eig(C);

% Convert eigenvalues to a vector (diagonal to vector)
eigenval = diag(eigenval);

% Sort eigenvalues and eigenvectors in descending order
[eigenval, idx] = sort(eigenval, 'descend');
eigenvec = eigenvec(:, idx);

% Store the sorting order
order = idx;
% =========================================================================

end
