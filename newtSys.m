function w = newtSys(n, alpha, beta, maxN, tol)
   format long
   % Constants
   l = 120; % in
   
   k = 1;
   h = (l - 0)/(n+1); 
   w = zeros(1,n+2);
   jacob = zeros(n,n);
   w(1) = alpha;
   w(n+2) = beta;
   xBar = zeros(n,1);
   xVector = linspace(0,l,n+2);
   for i=2:n+1
       w(i) = alpha + i * ((beta - alpha) / (l - 0)) * h;
   end
   
   
while (k <= maxN)
   
   %Populate xBar = fun(xVector) + center diff stuff
   for i=2:n+1
       xBar(i-1) = -(w(i+1) - 2*w(i) + w(i-1)) / h^2 + fun(xVector(i), w(i), (w(i+1) - w(i-1)) / (2*h) );
   end
   
   %Generate tridiagonal Jacobian
   for j = 3:n+1
       jacob(j-2,j-1) = -1 + (h/2) * funYY(xVector(j-1), w(j-1), (w(j) - w(j-2))/ (2*h));
   end
   
   for j = 2:n+1
       jacob(j-1,j-1) = 2 + h^2 * funY(xVector(j), w(j), (w(j+1) - w(j-1)) / (2*h));
   end
   
   for j = 2:n
       jacob(j,j-1) = -1 - (h / 2) * funYY(xVector(j+1), w(j+1), (w(j+2) - w(j)) / (2 * h));
   end
   
   % step 4
   y = jacob\-xBar;
   %y = linsolve(jacob, -Fbar); %either works
   
   % step 5
   for i=1:n
      w(i+1) = w(i+1) + y(i); 
   end

   
   % step 6
   yMag = norm(y);
   if (yMag < tol)
       w
       fprintf('Steps taken %d\n', k);
       break;
   end
   
   % step 7
   k = k + 1;
   
end

if(k > maxN)
   fprintf('Exceeded maxN\n');
   fprintf('Current w:');
   w
end

hold on
plot(xVector,w,'b');