function f = newtonSystem(n, xVector, tol, maxN)
Fbar = zeros(n,1);
jacob = zeros(n);
k = 1;  % step 1

while (k <= maxN)   % step 2
   
   % step 3
   for i=1:n
      Fbar(i) = F(xVector, i);     %Modify x(i) depending on number of systems
   end

   for i=1:n
       for j = 1:n
           jacob(i,j) = jacobian3(xVector(1), xVector(2), i, j); % xVector(3), i, j); % Modify x(i) depending on number of systems
       end
   end
   
   % step 4
   y = jacob\-Fbar;
   %y = linsolve(jacob, -Fbar); %either works
   
   % step 5
   xVector = xVector + y';
   
   % step 6
   yMag = norm(y);
   if (yMag < tol)
       xVector
       break;
   end
   
   % step 7
   k = k + 1;
end

if(k > maxN)
   fprintf('Exceeded maxN\n');
   fprintf('Current x:');
   xVector
end


Fbar;
jacob;
xVector;
y;
