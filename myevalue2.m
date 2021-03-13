% WRITE HERE YOUR SCRIPT FOR EXERCISE 7

A = exp(1); 
difference = 1;
n = 0;
% Here the approx is set to 0
apx=0;  
 
while difference >= 0.0001
    % factorial function
   fact =( 1/factorial(n));
   %appx here
   apx = apx+fact;
   difference = A - apx; 
    n = n + 1; 
end
 
fprintf('The built-in value of e is %.4f\n',A);
fprintf('The approximation is %.4f\n',apx);
fprintf('The value of n is %d\n',n-1);