ECE 544 IP Repositories
Last updated: 29-Mar-2022 (roy.kravitz@pdx.edu)
-----------------------------------------------
Vitis 2020.2 introduced some problems not seen in the Vivado 2019.x releases.   According to
Xilinx,Vitis 2020.x uses a newer version of MINGW which broke the makefiles for all of the
custom IP.  Apparently Xilinx updated the Makefiles for all of their IP blocks.

ECE 544 uses several IP block and drivers from Digilent and a custom IP block 
called Nexys4IO which provides controllability and observability to the pushbuttons, switches,
LEDs, RGB LEDs, and the 7-segment display.

I have updated the Makefiles for Nexys4IO, PmodENC, PmodOLEDrgb, PmodCMPS2, and the PmodR2R DAC.
I have build and successfully executed a program on the Nexys4 using the Nexys4IO IP block with
the new Makefile.  I have not checked the Pmods but the same fixes should work.  If you use any other
IP block from Digilent or any other custom IP blocks from 3rd parties please check the Makefiles.

The general form for a Makefile for a custom IP block for Vivado/Vitis 2022 is:

COMPILER=
ARCHIVER=
CP=cp
COMPILER_FLAGS=
EXTRA_COMPILER_FLAGS=
LIB=libxil.a

RELEASEDIR=../../../lib
INCLUDEDIR=../../../include
INCLUDES=-I./. -I${INCLUDEDIR}

INCLUDEFILES=$(wildcard *.h)
LIBSOURCES=$(wildcard *.c)
OBJECTS =	$(addsuffix .o, $(basename $(wildcard *.c)))
ASSEMBLY_OBJECTS  = $(addsuffix .o, $(basename $(wildcard *.S)))


libs:
	echo "Compiling nexys4IO..."
	$(COMPILER) $(COMPILER_FLAGS) $(EXTRA_COMPILER_FLAGS) $(INCLUDES) $(LIBSOURCES)
	$(ARCHIVER) -r ${RELEASEDIR}/${LIB} ${OBJECTS} ${ASSEMBLY_OBJECTS}
	make clean

include:
	${CP} $(INCLUDEFILES) $(INCLUDEDIR)

clean:
	rm -rf ${OBJECTS} 
	rm -rf ${ASSEMBLY_OBJECTS}

Note that with the gnu make utility the commands for a target must start with a single <TAB>