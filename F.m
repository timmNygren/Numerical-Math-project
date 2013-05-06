function f = F(r, theta, funNum) %x1, x2, x3, funNum) %commented out is book example
format long;
if(funNum == 1)
    %f = 3*x1 - cos(x2 * x3) - 0.5;  %book example
    f = r^2 - 1;                     %Test case
elseif (funNum == 2)
    %f = x1*x1 - 81 * (x2 + 0.1) * (x2 + 0.1) + sin(x3) + 1.06;         %Book example
    f = -3*r^2*(sin(theta))^2 + exp(-r*sin(theta)) + 3*r*cos(theta);    %test case
elseif (funNum == 3)
    f = exp(-x1*x2) + 20*x3 + (10*pi - 3) / 3;
    %newtonSystem param doesn't reach for test case
end