Function [output] = conversion(b,h)
 
    
    b = input('Enter a unit valuer: ');
    h = input('Enter a value: ');
if b=='o'
   output=h.* 28.3495;
Elif unit=='g'
    output=h.* 0.03527;
Else
    output='can’t compute';
    
    fprintf('Matrix dimensions must agree, re-enter vector')
end   
end