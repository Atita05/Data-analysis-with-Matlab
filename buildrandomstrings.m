% WRITE HERE YOUR FUNCTION FOR EXERCISE 4
function BRSF = buildrandomstrings(n)  % The function buildrandomstrings has been created and a input  n is being taken by the user.
symbols = 'a':'z'; % This allows only to take the alphabets from a to z. 
brs = randi(length(symbols),1,abs(n));
BRSF = cell(1, abs(n)); % This converts the string into a cell.
  for i = 1:abs(n)
    BRSF{i} = symbols(brs(1:i));
  end
if n < 0
    BRSF = fliplr(BRSF); % Here the function fliplr flips the string from left to right.
    
end        
 