% Name: Dilara
% Surname: Ozguder
% Group: EKFU-25/1
% Laboratory work 4
% Variant 9


%% Task 1a - Making 3D plots

x = (2*rand(1,200)-1).*sqrt(pi/2);
y = (2*rand(1,200)-1).*sqrt(pi/2);

[X,Y] = meshgrid(x,y);

F = sin(X.^2 + Y.^2);

figure

surf(X,Y,F)

shading interp

colormap([0.10 0.30 0.60;
          0.20 0.55 0.85;
          0.65 0.85 1.00])

view(15,15)

xlabel('x')
ylabel('y')
zlabel('f(x,y)')

title('f(x,y) = sin(x^2 + y^2)')

grid on


%% Task 1b - Surface z(r) = e^(r^2)

x = linspace(-1,1,200);
y = linspace(-1,1,200);

[X,Y] = meshgrid(x,y);

R = sqrt(X.^2 + Y.^2);

Z = exp(R.^2);

figure

surf(X,Y,Z)

shading interp

colormap([0.30 0.10 0.05;
          0.70 0.30 0.10;
          1.00 0.75 0.35])

view(20,20)

xlabel('x')
ylabel('y')
zlabel('z(r)')

title('z(r) = e^{r^2}')

grid on


%% Complementary Task
% Features of colormap function
% z(x,y) = 1 - (x^2 + y^2)

x = linspace(-1,1,100);
y = linspace(-1,1,100);

[X,Y] = meshgrid(x,y);

Z = 1 - (X.^2 + Y.^2);

figure


% Plot 1 - Parula colormap

ax1 = subplot(2,2,1);

surf(X,Y,Z)

shading interp

colormap(ax1,'parula')

xlabel('x')
ylabel('y')
zlabel('z')

title('Parula Colormap')

grid on


% Plot 2 - Hot colormap

ax2 = subplot(2,2,2);

surf(X,Y,Z)

shading interp

colormap(ax2,'hot')

xlabel('x')
ylabel('y')
zlabel('z')

title('Hot Colormap')

grid on


% Plot 3 - RGB color code

subplot(2,2,3)

surf(X,Y,Z, ...
    'FaceColor',[0.8500 0.3250 0.0980], ...
    'EdgeColor','none')

xlabel('x')
ylabel('y')
zlabel('z')

title('RGB Color [0.85 0.325 0.098]')

grid on


% Plot 4 - RGB color code

subplot(2,2,4)

surf(X,Y,Z, ...
    'FaceColor',[0.4940 0.1840 0.5560], ...
    'EdgeColor','none')

xlabel('x')
ylabel('y')
zlabel('z')

title('RGB Color [0.494 0.184 0.556]')

grid on
