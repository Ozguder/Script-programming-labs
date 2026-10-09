% Name: Dilara
% Surname: Ozguder
% Group: EKFU-25/1
% Laboratory work 6
% Variant 9

format compact


%% Task 1 - Creating MATLAB functions

F = 68;

C = farenh2cels(F);

disp('Temperature in Fahrenheit:')
disp(F)

disp('Temperature in Celsius:')
disp(C)

help farenh2cels


%% Task 2 - Using MATLAB global variables

global x y

x = 0:0.2:2*pi;

global_operation

figure

plot(x,y,'r:s','LineWidth',1.5,'MarkerSize',6)

xlabel('x')
ylabel('sin(x) + cos(x)')
title('sin(x) + cos(x) using global variables')

grid on

whos x y


%% Complementary Task - Argument checking in functions

inputValue = pi/4;

sinValue = one_two(inputValue);

disp('Function called with one output:')
disp(sinValue)


[sinValue,cosValue] = one_two(inputValue);

disp('Function called with two outputs:')

disp('sin(x):')
disp(sinValue)

disp('cos(x):')
disp(cosValue)
