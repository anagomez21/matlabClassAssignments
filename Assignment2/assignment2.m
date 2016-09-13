% Name: Ana Gomez
% Due date: September 15
% In this document you can see the answers for assignment 2. This would be
% the solutions for exercises in the textbook. You're going to find
% solutions for exercises 1-6, 11-15, 22, 24-27 of Chapter 1; exercises
% 1-4, 6-10, 12, 23, 26, 30, 31 of Chapter 2; and exercises 1, 4, 6, 8, 13
% of Chapter 3.

%% Chapter 1 Exercises

% 1.)

CopperAtomicWeight = 63.55

% 2.)

myage = 25
myage - 2
myage + 1

% 3.)

namelengthmax

% 4.)

weightPounds = 101
weightOunces = 1616
who
whos
clear weightOunces
who
whos

% 5.)

intmin
intmax

% 6.)

decimal = 7.6
decimal2 = int32 (decimal)

% 11.)

pounds = 101
kilos = pounds/2.2

% 12.)

ftemp = 88
ctemp = (ftemp - 32) * 5/9

% 13.)

cm = 155
inches = cm * 0.394

% 14.)

sind (90)
sin (1.5708)

% 15.)

R1 = 7
R2 = 4
R3 = 8

Rt = 1 / ((1/R1)+(1/R2)+(1/R3))

% 22.)

'A'<'B'

% 24.)

'b' >= 'c' - 1
3 == 2 + 1
(3 == 2) + 1
xor(5 < 6, 8 > 4)

% 25.)

x = 11
y = 21
xor(x > 5, y < 10)

% 26.)

3*10^5 == 3e5

% 27.)

log10(10000) == 4

%% Chapter 2 Exercises

% 1.)

vector1 = 2:7
vector2 = (1.1:0.2:1.7)
vector3 = (8:-2:2)

% 2.)

vec = linspace(0,2*pi,50)

% 3.)

expression = linspace(2,3,6)

% 4.)

vec11 = (-5:1:-1)
vec12 = linspace(-5,-1,5)
vec21 = (5:2:9)
vec22 = linspace(5,9,3)
vec31 = (8:-2:4)
vec32 = linspace(8,4,3)

% 6.)

r = (-1:0.5:1)
c = r'

% 7.)

vector = (2:10)
oe = bitget(abs(vector),1)~=0;
odd = vector(oe)

% 8.)

mat = [7:10 ; 12 10 8 6]
mat (1,3)
mat (2,:)
mat (1:2,1:2)

% 9.)

mat1 = [3 5 6 8 ; 2 5 6 9]
numel (mat)

% 10.)

mat2 = [4:7 ; 9:12]
mat2 (1,:) = 1:4
mat2 (:,3) = [5 7]

% 12.)

rows = 4
cols = 4
zeros(abs(rows),abs(cols))

% 23.)

a = (3:2:11)
sum (a)

% 26.)

num = (3:2:9)
den = (1:4)
sum(num./den)

% 30.)

random = randi([-10, 10], 1, 5)
random - 3
length (random(random>=0))
abs(random)
max(random)

% 31.)

mat35 = [4:8; 3:7; 9:13]
max(mat35)
max(mat35,[],2)
max(mat35(:))

%% Chapter 3 Exercises

% 1.)

ri = 10 %inner radius
ro = 13 %outer radius
V = (4*pi/3)*((ro^3)-(ri^3)) %volume of hollow sphere

% 4.)

vec1 = input('Enter a vector using the following format: [x1,x2,xn] \n ');
disp(vec1)

mat4 = input('Enter a matrix using the following format: [x1,x2,xn;y1,y2,yn] \n');
disp(mat4)

% 6.)

fprintf('%f\n',12345.6789) %Prints 12345.678900, a 12 field width
fprintf('%10.4f\n',12345.6789) %Prints 12345.6789, 10 character in total, 4 decimals
fprintf('%10.2f\n',12345.6789) %Prints 12345.68, rounded to 2 decimals
fprintf('%6.4f\n',12345.6789) %Prints 12345.6789, shows the 4 decimals, and not only 6 characters but the amount needed to print all the number
fprintf('%2.4f\n',12345.6789) %Prints 12345.6789, shows the 4 decimals, and not only 2 characters but the amount needed to print all the number

% 8.)

%This script asks for the fluid flow in m^3/s and print the equivalente in
%cubic feet per seconds
flow = input ('Enter the flow in m^3/s: ');
fprintf('A flow rate of %6.3f meters per sec\n is equivalent to %7.3f feet per sec\n', flow, flow/0.028)

% 13.)

%This script calculates the unit vector of a vector (x,y,z) that the user
%defines
disp ('We will help you calculate your unit vector, follow the directions')
x1 = input ('Please enter the value of x: ')
y1 = input ('Please enter the value of y: ')
z = input ('Please enter the value of z: ')
ui = sqrt ((x1^2)+(y1^2)+(z^2));
u2 = [x1 y1 z];
UnitVector = u2./ui
