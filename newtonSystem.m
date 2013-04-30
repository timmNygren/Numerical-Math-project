function f = newtonSystem(n, x, tol, maxN)
Fbar = zeros(n,1);
jacob = zeros(n);
k = 1;  % step 1

while (k <= maxN)   % step 2
   
   % step 3
   for i=1:n
      Fbar(i) = F(x(1), x(2), x(3), i);     %Modify x(i) depending on number of systems
   end
   for i=1:n
       for j = 1:n
           jacob(i,j) = jacobian3(x(1), x(2), x(3), i, j); % Modify x(i) depending on number of systems
       end
   end
   
   % step 4
   y = jacob\-Fbar;
   %y = linsolve(jacob, -Fbar); %either works
   
   % step 5
   x = x + y';
   
   % step 6
   yMag = norm(y);
   if (yMag < tol)
       x
       k = maxN;
   end
   
   % step 7
   k = k + 1;
end

Fbar;
jacob;
x;
y;
