main: main.o asm.o
	gcc main.o asm.o -o main
main.o: main.c asm.h
	gcc -Wall -g -c main.c -o main.o
asm.o: asm.c
	gcc -Wall -g -c asm.c -o asm.o
run: main
	gdb -tui main
clean:
	rm ∗ . o main

