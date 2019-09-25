u = @(t) t>=0;
t = -4:0.01:4;
y = u(t);
%energy signal
x =@(t) u(t+2)-3*u(t)+2*u(t-1);
simpsons = quad(x,-4,4);
% figure out rectangle and simpsons(quad) function to solve for the area of
% the integral. x(t) is an energy signal because its not periodic, y is
% power because its periodic

%y = cos(pi*t +pi/6);

%y_squared=@(t) y(t).^2;

%g = @(t) exp(-3*t/5)*cos(3*(pi/4)*t)*u(t)