function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% hypothesis should be a 97 x 1 vector (same as y)
y_ = X * theta; % ( [97 x 2] * [2 x 1] = [97 x 1] )

J = sum((y_ - y).^2)/(2*m);

% =========================================================================

end
