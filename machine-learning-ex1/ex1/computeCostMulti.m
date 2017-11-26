function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% hypothesis should be a m x 1 vector (same as y)
y_ = X * theta; % ( [m x n] * [n x 1] = [m x 1] )

%J = sum((y_ - y).^2)/(2*m);
J = (y_ - y)' * (y_ - y) / (2*m);	% EX 1 page 12 implementation note
                                    % on multivariate cost function
% J(?) = (X? ? y)' (X? ? y) / (2m)


% =========================================================================

end
