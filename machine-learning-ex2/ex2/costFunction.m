function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

%h = sigmoid(theta'*X); % Incorrect, dimensions don't match for the
% function parameters


h = sigmoid(X * theta); % We want a m X 1 matrix for h. X(m,n) * theta(n,1) = h(m,1)

% The summation can be broken into two summations. Each of those can be
% calculated using matrix multiplication.

J =  ( (-(y' * log(h))) - ((1 - y)' * log(1-h))) / m; % Using log to base e

grad = ((h - y)' * X) / m;





% =============================================================

end
