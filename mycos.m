% WRITE HERE YOUR FUNCTION FOR EXERCISE 3

function [] = mycos(n,m)
% style of the plot is picked from two menu functions.
% 1st initialise X from -pi to pi here
x1 = -pi:(2*pi)/(n-1):pi;
%x1 = -pi:5:pi;
x2 = -pi:(2*pi)/(m-1):pi;
%x2 = -pi:30:pi;
 % assign cos to Y axis here
y1 = cos(x1);
y2 = cos(x2);
%tiledlayout(2,1)
tiledlayout(2,1)
 % giving colour choices here 
choice1 = menu("Choose a colour", "Red", "Blue", "Green");
choice2 = menu("Choose a point style", "Circle", "Star");
colour = ['R','B','G'];
style = ['o','*'];
 %points
nexttile
plot(x1,y1,strcat(colour(choice1),'-',style(choice2)))
title(string(n) + ' Points')
grid on 
 
nexttile
plot(x2,y2,strcat(colour(choice1),'-',style(choice2)))
title(string(m) + ' Points')
grid on 
end
