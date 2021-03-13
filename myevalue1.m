% WRITE HERE YOUR SCRIPT FOR EXERCISE 7

A =  exp(1); %
difference = 1;
n = 0;
 
while difference >= 0.0001
    n = n + 1;
    % e calculate here
    eval = (1 - 1/n)^n; 
    eval = 1/eval;
    %The difference calculated by the difference of approx and actual value.
    difference = eval - A; 
end
 % built value of e
fprintf('The built-in value of e is: %.4f\n',A);
%approximate value as that of the e value
fprintf('The approximation is: %.4f\n',eval); 
% calculated value of n.
fprintf('The value of n is: %d\n',n); 
