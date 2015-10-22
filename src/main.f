      program main
C  Declarations
c         implicit none

         integer nParticles
         parameter (nParticles = 2)

         real m_tau
         parameter (m_tau = 1.77582) ! GeV 

         double precision E_cm
         parameter (E_cm = 125.0) !GeV

         integer init1, init2

         double precision  mass (nParticles)  / nParticles*m_tau /
         double precision  p (4, nParticles)
C         real*8 p(4,2)
C         real*8 mass(2)
C         mass = (1.75682,1.77682) 

         double precision wt
         integer LW

         wt = 1.
         LW = 1

         print *, "Running main program."

C  Statements
         print *, ''
         print *, 'Input variables:'
         print *, 'nParticles: ', nParticles, ' E_cm', E_cm
         print *, 'mass(1): ', mass(1), 'mass(2): ', mass(2)
         print *, 'WT', WT
         print *, "Calling RAMBO."

         do 10 i = 1,4
            call RAMBO(nParticles,E_cm,mass,p,wt,LW)
            print *, 'i', i
            print *, 'p(1,1)', p(1,1)
            print *, 'p(2,1)', p(2,1)
            print *, 'p(3,1)', p(3,1)
            print *, 'p(4,1)', p(4,1)
            print *, ''
            print *, 'p(1,2)', p(1,2)
            print *, 'p(2,2)', p(2,2)
            print *, 'p(3,2)', p(3,2)
            print *, 'p(4,2)', p(4,2)
            print *, ''
            print *, ''
 10      continue
C         var1 = rh_tautau(p1,p2)
         print *, 'rh_tautau output:', var1

      end program main
