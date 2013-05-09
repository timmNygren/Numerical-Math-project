function f = funYY(x,y,yPrime)

   %Constants
   l = 120; % in
   E = 3.0 * 10^7; % lb/in^2
   S = 1000; % lbs
   I = 625; % in^4
   q = 100; % lb/ft
   
   f = (S / (E * I))^2 * y + ( ((S / (E * I)) * q * x) / (2 * E * I) ) * (x - l);