function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta);
J_history = zeros(num_iters, 1);
thetad = zeros(n,1);
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    for j = 1:n     
       J_dany = 0;
        for i = 1:m
            J_dany = J_dany + (theta' * X(i,:)' - y(i))*X(i,j);
        end
        thetad(j) = theta(j) - alpha * 1/m * J_dany ;
    end
    theta = thetad;
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
