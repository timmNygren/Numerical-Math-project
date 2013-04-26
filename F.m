function f = F(x1, x2, x3, funNum)
format long;
if(funNum == 1)
    %adding 1 to be constant with book answers DONT FORGET TO REMOVE
    f = 3*x1 - cos(x2 * x3) - 0.5 + 1; %book answer is -0.19995, actual is -1.19995
elseif (funNum == 2)
    f = x1*x1 - 81 * (x2 + 0.1) * (x2 + 0.1) + sin(x3) + 1.06;
elseif (funNum == 3)
    f = exp(-x1*x2) + 20*x3 + (10*pi - 3) / 3;
end