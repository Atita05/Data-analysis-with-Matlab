% WRITE HERE YOUR FUNCTION FOR EXERCISE 8

function [CS,CSS] = sumcomplex(real,Img,s)
if length(real) == length(Img)
if max(s) < length(real)
CS = struct('real',[],'imaginary',[]);
for i = (1:length(real))
    disp(i);
CS(i) = struct('real',r(i),'imaginary',Img(i));
disp(CS(i));
end
CSS = string(sum(r(s)))+'+'+string(sum(Img(s)))+'i';
else
disp('index is larger than length of complex num');    
end
else
disp('length of real and imaginary num should be same here');
end
end