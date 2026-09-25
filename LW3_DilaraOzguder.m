% Name: Dilara
% Surname: Ozguder
% Group: EKFU-25/1
% Student ID: 20244609
% Laboratory work 3
% Variant 9


%% Task 1 - Creating 2-D graphs

x = linspace(0,4,81);

f1 = x;
f2 = x.^2;
f3 = x.^3;

figure

plot(x,f1,'-',x,f2,'--',x,f3,'-.','LineWidth',1.5)

axis([0 4 0 64])

xlabel('x')
ylabel('f_1(x) = x; f_2(x) = x^2; f_3(x) = x^3')

title('Graphs of the functions x^n')

legend('f_1(x) = x', ...
       'f_2(x) = x^2', ...
       'f_3(x) = x^3', ...
       'Location','northwest')

grid on


%% Task 2 - Preparation of specialized plots

x3 = 0:0.05:10*pi;

y = sin(x3).*cos(x3);
z = cos(x3);

figure

subplot(2,1,1)

plot3(x3,y,z,'LineWidth',1.5)

xlabel('x')
ylabel('y(x) = sin(x)cos(x)')
zlabel('z(x) = cos(x)')

title('3D Plot of y(x) and z(x)')

axis([0 10*pi -0.5 0.5 -1 1])

grid on


subplot(2,1,2)

polar(x3,y)

title('Polar Plot of y(x) = sin(x)cos(x)')

axis([-0.6 0.6 -0.6 0.6])
 
grid on


%% Complementary Task - Graphical representation of signals

t = 0:0.001:1.5;

A = 6;
f = 4;
sigma = 1.2;
U1 = 3.5;
U2 = 2.5;

cleanSignal = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);

n = sigma*randn(size(t));

originalSignal = cleanSignal + n;

filteredSignal = originalSignal;
filteredSignal(abs(filteredSignal) < U2) = 0;

aboveU1 = originalSignal > U1;

maximumVoltage = max(originalSignal);
minimumVoltage = min(originalSignal);

maxLocations = originalSignal == maximumVoltage;
minLocations = originalSignal == minimumVoltage;

purple = [0.4940 0.1840 0.5560];

yMinimum = min([originalSignal filteredSignal U2]);
yMaximum = max([originalSignal filteredSignal U1]);

margin = 0.1*(yMaximum-yMinimum);


figure


subplot(1,2,1)

plot(t,originalSignal,'--','LineWidth',1.5)

hold on

plot(t,filteredSignal,':','LineWidth',1.5)

plot([t(1) t(end)],[U1 U1], ...
    '-','Color',purple,'LineWidth',1.5)

plot([t(1) t(end)],[U2 U2], ...
    '-.','LineWidth',1.5)

xlabel('Time (s)')
ylabel('Voltage (V)')

title('Original and Filtered Signals', ...
      'Color',purple, ...
      'FontSize',10)

legend('Original signal', ...
       'Filtered signal', ...
       'U_1 = 3.5 V', ...
       'U_2 = 2.5 V', ...
       'Location','best')

axis([0 1.5 yMinimum-margin yMaximum+margin])

grid on

hold off


subplot(1,2,2)

stem(t(aboveU1),originalSignal(aboveU1), ...
     'LineWidth',1.0)

hold on

plot([t(1) t(end)],[U1 U1], ...
    '-','Color',purple,'LineWidth',1.5)

plot(t(maxLocations),originalSignal(maxLocations), ...
     'c*','MarkerSize',10,'LineWidth',1.5)

plot(t(minLocations),originalSignal(minLocations), ...
     'ro','MarkerSize',7,'LineWidth',1.5)

xlabel('Time (s)')
ylabel('Voltage (V)')

title('Signal Samples Exceeding U_1', ...
      'Color',purple, ...
      'FontSize',10)

legend('Samples above U_1', ...
       'U_1 = 3.5 V', ...
       'Maximum voltage', ...
       'Minimum voltage', ...
       'Location','best')

axis([0 1.5 yMinimum-margin yMaximum+margin])

grid on

hold off
