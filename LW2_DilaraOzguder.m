% Name: Dilara
% Surname: Ozguder
% Group: EKFU-25/1
% Date: 2026.09.18
% Student ID: 20244609
% Laboratory work 2
% Variant 9

%% Task 1 - Vectors

a = (-pi/2:0.5:3*pi)';
b = a.^2;
c = sin(a + b);

disp('Task 1 result:')
disp(c')


%% Task 2 - Matrices

Z = rand(3,3);

disp('Original matrix Z:')
disp(Z)

Z(2,:) = [];

disp('Z after removing the second row:')
disp(Z)

Z = Z';

disp('Transposed Z:')
disp(Z)


%% Task 3 - Practical applications

t = 0:0.001:1.5;

A = 6;
f = 4;
sigma = 1.2;
U1 = 3.5;
U2 = 2.5;

s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);

n = sigma*randn(size(t));

s = s + n;

selected = s(s > U1);

filtered = s;
filtered(abs(filtered) < U2) = 0;

numberUnfiltered = sum(s == s);
numberSelected = sum(s > U1);

minimumVoltage = min(filtered);
maximumVoltage = max(filtered);

disp('Number of samples in the unfiltered signal:')
disp(numberUnfiltered)

disp('Number of samples above U1:')
disp(numberSelected)

disp('Minimum voltage of the filtered signal:')
disp(minimumVoltage)

disp('Maximum voltage of the filtered signal:')
disp(maximumVoltage)


%% Complementary Task P1

A = input('Enter vector A with 12 elements: ');

B = [A(end-2:end) A(1:end-3)];

disp('generated vector B:')
disp(B)
