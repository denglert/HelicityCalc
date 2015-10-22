      program main

C  Declarations
         dimension p1(0:3),p2(0:3)
         p1(0) = 5. 
         p1(1) = 1. 
         p1(2) = 1. 
         p1(3) = 1. 

         p2(0) = 1. 
         p2(1) = 2. 
         p2(2) = 3. 
         p2(3) = 4. 

C  Statements
         print *, "Running main program."
         var1 = rh_tautau(p1,p2)
         print *, 'Output', var1
      end program main
