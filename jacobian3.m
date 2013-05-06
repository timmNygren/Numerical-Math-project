function j = jacobian3(r, theta, part_i, part_j) %x1, x2, x3, part_i, part_j) %Book example commented out

%%%%%%%%%%%%%%
% ROW 1
if(part_i == 1 && part_j == 1)                      %df1/dx_1
    %j = 3;                      %Book example
    j = 2*r;                     %Test case
elseif(part_i == 1 && part_j == 2)                  %df1/dx_2
    %j = x3 * sin(x2 * x3);      %Book example
    j = 0;                       %Test case
% 3x3 matrix
elseif(part_i == 1 && part_j == 3)                  %df1/dx_3
    j = x2 * sin(x2 * x3);
    %Test case won't reach
% END ROW 1
%%%%%%%%%%%%%%

%%%%%%%%%%%%%%
% ROW 2
elseif(part_i == 2 && part_j == 1)                  %df2/dx_1
    %j = 2 * x1;                 %Book example
    j = -6*r*(sin(theta))^2 - sin(theta)*exp(-r*sin(theta)) + 3*cos(theta); %Test case
elseif(part_i == 2 && part_j == 2)                  %df2/dx_2
    %j = -162 * (x2 + 0.1);      %Book example
    j = -6*r^2*sin(theta)*cos(theta) - 3*r*sin(theta) - r*cos(theta)*exp(-r*sin(theta)); %Test case
% 3x3
elseif(part_i == 2 && part_j == 3)                  %df2/dx_3
    j = cos(x3);
    %Test case won't reach
% END ROW 2
%%%%%%%%%%%%%%

%%%%%%%%%%%%%%
% ROW 3
elseif(part_i == 3 && part_j == 1)                  %df3/dx_1
    j = -x2 * exp(-x1 * x2);    %Book example
    %Test case won't reach
elseif(part_i == 3 && part_j == 2)                  %df3/dx_2
    j = -x1 * exp(-x1 * x2);    %Book example
    %Test case won't reach
% 3x3
elseif(part_i == 3 && part_j == 3)                  %df3/dx_3
    j = 20;
    %Test case won't reach
%END ROW 3
%%%%%%%%%%%%%%
end