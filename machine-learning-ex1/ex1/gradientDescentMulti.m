function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    y_ = X * theta; % h(x)
    sum_ = sum((y_ - y).*X); % Sum term in gradient descent. Each column is sum for different theta (different x_j).
    rhsval = alpha * sum_ / m;
    
  
%     for j = 1 : length(theta)
%         theta(j) = theta(j) - rhsval(j);
%     end
    
    theta = theta - rhsval'; % Alternate method without for loop
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
