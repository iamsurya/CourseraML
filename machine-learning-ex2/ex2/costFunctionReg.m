function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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


h = sigmoid(X * theta); % We want a m X 1 matrix for h. X(m,n) * theta(n,1) = h(m,1)

% The summation can be broken into two summations. Each of those can be
% calculated using matrix multiplication.

J =  ( (-(y' * log(h))) - ((1 - y)' * log(1-h))) / m; % Using log to base e
regterm = (lambda/(2*m)) * (theta(2:end)'*theta(2:end));

J = J + regterm; % Regularize sum(theta^2) * l/m;

grad = (((h - y)' * X) / m)';
regterm = (lambda/m) * theta;
regterm(1) = 0;
grad = grad + regterm;


% =============================================================

end
