% WRITE HERE YOUR FUNCTION FOR EXERCISE 2
% for this question I have referred lab exercise
function countdown()
persistent count
%Persistent variables are similar to global variables because MATLAB creates permanent storage for both. They differ from global variables because persistent variables are known only to the function that declares them. Therefore, code at the MATLAB command line or other functions cannot change persistent variables.
%Since MATLAB initializes a persistent variable to an empty matrix ([]), typically functions check to see if a persistent variable is empty, and, if so, initialize it.
    if isempty(count)
        count = 5;% intializing counter here
    end
    
    if(count<=0) % just to handle error when count =0 here
        fprintf('******counter error******')
    else
    fprintf(' %d seconds left \n',count)
    count = count - 1;
%    fprintf(' counter error')
    end
end