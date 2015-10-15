# Variabele voor de geselecteerde compiler (zie $ fortrancompilers)
FC=gfortran

# Eventuele compilatievlaggen per compiler
FFLAGS_g95      = -g -pedantic -Wall -fbounds-check -ftrace=full
FFLAGS_gfortran = -g -pedantic -Wall -Wimplicit-interface -Wunderflow -fbounds-check -fimplicit-none
FFLAGS_ifort    = -g -debug full -implicitnone -check -warn -free -Tf
FFLAGS_nagfor   = -g -C=all -gline -u -info -colour

FFLAGS=$(FFLAGS_$(FC))
# of niet:
#FFLAGS=

ifeq ($(FC) , ifort)
	ext = f90
else
	ext = f95
endif
#-----------------------------------------------------------------------------------------
default: main

main: main.f95 
	@if [ ${FC} = ifort ]; then \
		cp main.f95 main.f90; \
	 fi
	@$(FC) -c $(FFLAGS) main.$(ext)
	@$(FC) -o main main.o 
	./main

clean:
	@ rm -f *.o *.mod r
	@ rm main

# Te gebruiken wanneer je compilatie wilt forceren wanneer `hello_world' al bestaat:
#.PHONY: hello_world

