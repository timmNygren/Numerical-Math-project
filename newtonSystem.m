function f = newtonSystem(n, x, tol, maxN)
Fbar = zeros(n,1);
jacob = zeros(n);
k = 1;

while (k <= maxN)
   %do stuff
   for i=1:n
      Fbar(i) = F(x(1), x(2), x(3), i);     %Modify depending on number of systems
   end
   for i=1:n
       for j = 1:n
           jacob(i,j) = jacobian3(x(1), x(2), x(3), i, j); % Modify depending on number of systems
       end
   end
   
   y = linsolve(jacob, -Fbar);
   
   k = k + 1;
end

Fbar
jacob
y