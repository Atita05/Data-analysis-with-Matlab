% WRITE HERE YOUR FUNCTION FOR EXERCISE 6
function newF = myangle(a,b)
 if a>b
     max = a;
     min = b;
 else
     max = b;
     min = a;
 end
         
   D = (min:max);
   R = D.* (pi/180);
   newF = [D(:),R(:)];
   My_Function(newF);
end