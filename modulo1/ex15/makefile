# A Makefile with variables and suffix rules

# variaveis
INCLUDES = inc_nsets.h populate.h check.h
SOURCES = inc_nsets.c populate.c check.c main.c
OBJFILES = inc_nsets.o populate.o check.o
EXEC = ex15

# Suffix rules
.SUFFIXES : .c .o

# How to build an object .o from a code file .c ; $< -- file name.c.o:
	gcc -Wall -g -c $<
	
${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
