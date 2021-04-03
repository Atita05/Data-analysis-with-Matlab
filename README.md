# Data-analysis-with-Matlab

EXERCISE 1 
A silicon wafer manufacturer stores, for every part in their inventory, a part number, how many there are in
the factory, and the cost for each part. Create a function called “waferstore”, that will:
• Take as input arguments 3 vectors, one containing the part numbers, one containing the quantities
and one containing the costs of the parts in the inventory.
• Build an array of structs containing, for each part, number, quantity and cost. If displayed, the array
of structs could look something like this:
>> parts
parts =
1x3 struct array with fields:
 partno
 quantity
 costper
>> parts(1)
ans =
 partno: 123
 quantity: 4
 costper: 33
>> parts(2)
ans =
 partno: 142
 quantity: 1
 costper: 150
>> parts(3)
ans =
 partno: 106
 quantity: 20
 costper: 7.5000
• Provide the array of structs as an output argument to the calling script or function.
• Print the part number and the total cost (quantity of the parts multiplied by the cost of each) in a
column format. For example, if the variable parts stores the previous values, the result would be:
123 132.00
142 150.00
106 150.00
• Your function will need to check that the 3 vectors provided as inputs are of equal size and provide
the user with an appropriate error message in case they are of different sizes.

EXERCISE 2 

Write a function called “countdown” that will output a series of strings that represent a 5 seconds
countdown. The first time the function is called it will return the string '5 seconds left' and afterwards, every
time the function is called, the countdown is decremented by 1 and a string with the remaining seconds is
returned. When the countdown reaches 0, the returned string will alert the user that the countdown has
expired. Further calls to the function will return the same alert. Here is an example of calling the function for
the first 3 times:
>> countdown()
ans =
'5 seconds left'
>> myvar = countdown()
myvar =
'4 seconds left'
>> another_var = countdown()
another_var =
'3 seconds left'

EXERCISE 3 

Write a function called “mycos” that will plot the cos function with a different number of points between -π
and π:
• The function will receive two arguments, which are the number of points to use in two different
plots of the cos function.
• The function will present the user with simple menus where he/she can choose a colour among
‘red’, ‘blue’, or ‘green’ and a style for the points among ‘circle’ or ‘star’.
• The function will then create two plots of the cos function with the two different sets of connected
points. These two plots need to be within the same figure and need to show in their title the number
of points used.
For example, the following call to the function:
>> mycos(5,30)
in which the user chooses colour ‘blue’ and style ‘circle’ will result in a figure similar to the following one, in
which the first plot has 5 points altogether in the range from -π to π, inclusive, and the second has 30.

EXERCISE 4 

Write a function called “buildrandomstrings” that will receive as input an integer n.
• If n is positive: it will create and return a cell array with strings of random characters of increasing
lengths, from 1 to n. Each string will be constituted by the previous random string plus an extra
random character.
• If n is negative: it will create and return a cell array with strings of random characters of decreasing
lengths, from |n| to 1. Each string will be constituted by the previous random string minus the last
character.
Here is an example of running the function for 2 different inputs:
>> buildrandomstrings(4)
ans =
 4×1 cell array
 {'x' }
 {'xg' }
 {'xgk' }
 {'xgke'}
>> buildrandomstrings(-3)
ans =
 3×1 cell array
 {'jdu'}
 {'jd' }
 {'j' }
 
EXERCISE 5 

The distance between any two points (x1,y1) and (x2,y2) is given by:
distance =
The area of a triangle is:
area =
where a, b, and c are the lengths of the sides of the triangle, and s is equal to half the sum of the lengths of
the three sides of the triangle.
Write a function called “calctrianglearea” that will receive as input argument a nx2 matrix of real numbers,
representing n points in 2D space.
2
1 2
2
1 2 (x - x ) + (y - y )
s *(s - a)*(s - b)*(s - c)
The function will then calculate the areas of the triangles whose vertices are the sets of 3 consecutive points
in the matrix, starting with the first point and using each point only once (that is, it will first calculate the
area of the triangle whose vertices are points 1, 2, 3; then it will calculate the area of the triangle whose
vertices are points 4, 5, 6; and so on).
The function will provide as output argument a vector containing the area of each triangle.
The function will write a message to the user explaining how many triangle areas have been calculated; the
message will also contain the coordinates of any points which were not used (in case n is not a multiple of 3).
[Hint: it might be useful to create a separate function that calculates the length of the side formed by any
two points (the distance between them)].

EXERCISE 6 

Write a function called “myangle” for angle conversions between degrees and radians.
• myangle will receive as input arguments two numbers, representing the minimum and maximum
angles in degrees.
• myangle will provide as output argument a matrix M with 2 columns: the first column will contain the
angle in degrees, from the minimum to the maximum, in steps of 1 degree; the second column will
contain the corresponding angle in radians. The conversion is:
R = (D * π)/180
where D is the angle in degrees and R the corresponding angle in radians.
• myangle will also call another function (you can choose any name for it), which will receive as input
argument the matrix M and will print in the command window two columns: the first column
containing the angle in degrees ordered from the minimum to the maximum, and the second column
containing the corresponding angle in radians.
• Note that the input arguments can be provided to myangle in any order; that is myangle (0, 10) and
myangle (10,0) will generate the same output.

EXERCISE 7 

The inverse of the mathematical constant e can be approximated as follows:
Write a script “myevalue1” that will loop through values of n until the difference between the approximation
of e and the actual value of e (that is, the built-in value of e) is less than 10!". The script should then print
out the built-in value of e and the approximation to 5 decimal places, and also print the value of n required
for such accuracy.
The value of the constant e also can be approximated by:
� = & 1
�!
#
$%&
Where n! indicates the factorial of n. Write a script "myevalue2" that will provide an approximation of e
using this formula such that the difference between the approximation and the actual value of e is less than
10!". The script should then print out the built-in value of e and the approximation to 5 decimal places, and
also print the value of n required for such accuracy.
1 1 1
æ ö » - ç ÷ è ø
n
e n

EXERCISE 8 

A complex number can be expressed in the form x+yi, where x and y are real numbers and i is the imaginary
unit which satisfies i
2 = -1. Given a complex number x+yi, x is called the real part and y the imaginary part.
The sum of two complex numbers is a complex number whose real part is constituted by the sum of the real
parts and whose imaginary part is constituted by the sum of the imaginary parts, that is: (a+bi) + (c+di) =
(a+c) + (b+d)i . In this exercise you will write a function “sumcomplex” that will calculate sums of complex
numbers.
sumcomplex will receive as input arguments 3 vectors. The first two vectors, R and I, should be of equal
length, n, with R containing real parts and I containing the imaginary parts of n complex numbers.
sumcomplex will build an array of structs which will store one complex number per struct, each separated
into real and imaginary part. Each struct should look something like this:
>> imaginaryNumber
imaginaryNumber=
1x2 struct array with fields:
 real
 img

The third vector, S, will be a vector of indices, indicating which of the n complex numbers should be added.
For example S = [1, 3, 4] indicates that the first, third and fourth complex numbers should be added.
sumcomplex will perform the addition and provide two output arguments. The first output argument will be
the array of structures containing all the complex numbers. The second output argument will be the result of
the sum as specified in vector S.
sumcomplex will also check that the lengths of vectors R and I are the same and provide to the user a proper
error message if they are of different length.
sumcomplex will also check that S does not contain indices larges than n and provide to the user a proper
error message if necessary.

EXERCISE 9 

Write a function "wordscountstarting" that will read the text file “LittleMermaid.txt” provided in the zip file
on the Moodle page. Wordscountstarting will receive as input arguments an integer n and a character c and
return two output arguments:
• The first output argument will be a cell array containing the n most frequent words among those
starting with c in the text, together with the number of times they occur.
• The second output argument will be the total number of occurrences of words starting with c in the
text.
wordscountstarting will need to be case-insensitive; for instance, if c is either 's' or 'S', then both the words
“Sea” and “sea” should be considered as starting with c, and should be counted as two occurrences of the
same word. If several words appear the same number of times, then any of them can be provided in the
output. (Hint: you can use the function textread to read a text file)
