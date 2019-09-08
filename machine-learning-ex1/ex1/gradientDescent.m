function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

error = (X * theta) - y; % mx1 = mx2 * 2x1 dimension
constant = alpha/m;
%for j = 1:length(theta)
%    theta(j) = theta(j) - (constant*sum(error.*X(:,j))) 
%end
%vectorized form
    theta = theta - (constant*(X'*error)) 

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end