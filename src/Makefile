#FC     = gfortran
FC     = ifort
FCFLAGS = -c
FLFLAGS =
CC     = g++
OBJ = ../lib/rh_tautau.o ../lib/main.o ../lib/rambo.o ../lib/ranmar.o

#########################

../bin/main : $(OBJ)
	$(FC) $(FLFLAGS) -o $@ $(OBJ)

../bin/main_test : ../lib/main_test.o ../lib/rh_tautau.o
	$(FC) $(FLFLAGS) -o $@ $(OBJ)

../lib/main_test.o : main_test.f
	$(FC) $(FCFLAGS) $< -o $@ 

../lib/main.o : main.f
	$(FC) $(FCFLAGS) $< -o $@ 

../lib/rh_tautau.o : rh_tautau.f
	$(FC) $(FCFLAGS) $< -o $@ 

../lib/rambo.o : rambo.f
	$(FC) $(FCFLAGS) $< -o $@ 

../lib/ranmar.o : ranmar.f
	$(FC) $(FCFLAGS) $< -o $@ 
