function j = jacobian3(x1,x2,x3, part_i, part_j)

%%%%%%%%%%%%%%
% ROW 1
if(part_i == 1 && part_j == 1)
    j = 3;
elseif(part_i == 1 && part_j == 2)
    j = x3 * sin(x2 * x3);
% 3x3 matrix
%NOTE NEGATING ANSWER FOR BOOK CONSISTANCY
elseif(part_i == 1 && part_j == 3) % book is positive, answer given negative
    j = x2 * sin(x2 * x3) * -1;
% END ROW 1
%%%%%%%%%%%%%%

%%%%%%%%%%%%%%
% ROW 2
elseif(part_i == 2 && part_j == 1)
    j = 2 * x1;
elseif(part_i == 2 && part_j == 2)
    j = -162 * (x2 + 0.1);
% 3x3
elseif(part_i == 2 && part_j == 3)
    j = cos(x3);
% END ROW 2
%%%%%%%%%%%%%%

%%%%%%%%%%%%%%
% ROW 3
elseif(part_i == 3 && part_j == 1)
    j = -x2 * exp(-x1 * x2);
elseif(part_i == 3 && part_j == 2)
    j = -x1 * exp(-x1 * x2);
% 3x3
elseif(part_i == 3 && part_j == 3)
    j = 20;
%END ROW 3
%%%%%%%%%%%%%%
end