%base = input('Enter a base vector: ');
%height = input('Enter a heightvector: ');

%s = (base+height)/2 
%fprintf('area',s);
function s = calctriangarea(b,h)
if length(b)==length(h)
    %s = (b. * h)* 0.5    ;
    s = (b.*h)/2;
else
    s='cant compute'
    fprintf('Matrix dimensions must agree, reenter vector')
end   
end