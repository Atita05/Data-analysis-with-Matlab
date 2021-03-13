% WRITE HERE YOUR FUNCTION FOR EXERCISE 5
function area = calctrianglearea(x)

num = length(x);% vector length taken
len = floor(num/3);% here find the length/3 i.e divisible by 3
extras = x((len*3)+1:num,:); % extra vectors i.e if 11 are there then 11/3= (9) +2 so here 2 are extras
x1 = x(1:(len*3),:);% here find out the elements
x2 = transpose(x1);
x3 = reshape (x2,[2,3,len]); % reshape them 
a = reshape((((x3(1,1,:)-x3(1,2,:)).^2 + (x3(2,1,:)-x3(2,2,:)).^2).^0.5),[1,len]); % distance find out
b = reshape((((x3(1,1,:)-x3(1,3,:)).^2 + (x3(2,1,:)-x3(2,3,:)).^2).^0.5),[1,len]);
c = reshape((((x3(1,2,:)-x3(1,3,:)).^2 + (x3(2,2,:)-x3(2,3,:)).^2).^0.5),[1,len]);
distance = [a;b;c];
area = ((sum([a;b;c])/2).*((sum([a;b;c])/2)-a).*((sum([a;b;c])/2)-b).*((sum([a;b;c])/2)-c)).^0.5; % sum of the formula
fprintf("Areas of %d triangles is \n", len)
if not(isempty(extras)) %error handling
    disp("List of unused co-ordinates are as follows:")
    disp(extras)
end
end