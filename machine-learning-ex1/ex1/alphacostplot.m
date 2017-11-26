% Plots alpha vs cost (you should run Ex1's gradient descent part to load
% the data.
%% Choose some alpha value
alpha = [0.3, 0.1, 0.03, 0.01];
num_iters = 400;

J_Hist = zeros(400,4);
theta_hist = zeros(3,4);
% Plot the convergence graph
figure;
hold on
for i = 1 : 4
% Init Theta and Run Gradient Descent 
theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha(i), num_iters);
theta_hist(:,i) = theta;
J_Hist(:,i) = J_history;
end

plot(1:400, J_Hist(1:400,1), 'r', 'LineWidth', 2);
plot(1:400, J_Hist(1:400,2), 'b', 'LineWidth', 2);
plot(1:400, J_Hist(1:400,3), 'g', 'LineWidth', 2);
plot(1:400, J_Hist(1:400,4), 'k', 'LineWidth', 2);
legend('3', '1', '0.3', '0.1');
xlabel('Number of iterations');
ylabel('Cost J');
