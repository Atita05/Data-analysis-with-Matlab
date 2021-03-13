% WRITE HERE YOUR FUNCTION FOR EXERCISE 1

function WST = waferstore(a,b,c)  %create a function waferstore which takes input parameters three (a,b,c) vectors.
 
if length(a) == length(b) && length(b) == length(c)  
    WST = struct('partno',num2cell(a),'quantity',num2cell(b),'costper',num2cell(c)); % we made a structural array where num2cell converts array to cell array.
 
    fprintf('%d %d \n' ,[a;b.*c]);
else
    fprintf('you entered wrong size, please enter same vector size here');
    
end
end