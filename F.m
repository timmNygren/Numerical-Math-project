function f = F(vector, funNum) %x1, x2, x3, funNum) %commented out is book example
format long;
if(funNum == 1)
    %f = 3*vector(1) - cos(vector(2) * vector(3)) - 0.5;  %book example
    f = vector(1)^2 - 1;                     %Test case
elseif (funNum == 2)
    %f = vector(1)*vector(1) - 81 * (vector(2) + 0.1) * (vector(2) + 0.1) + sin(vector(3)) + 1.06;         %Book example
    f = -3*vector(1)^2*(sin(vector(2)))^2 + exp(-vector(1)*sin(vector(2))) + 3*vector(1)*cos(vector(2));    %test case
elseif (funNum == 3)
    f = exp(-vector(1)*vector(2)) + 20*vector(3) + (10*pi - 3) / 3;
    %newtonSystem param doesn't reach for test case
end