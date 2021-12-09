compileAll: main.o asm.o
	gcc -c -g -Wall main.c -o main.o
	gcc -c -g -Wall asm.s -o asm.o

compileTogether: compileAll
	gcc -g -Wall main.o asm.o -o mainCompile

run: compileTogether
	./mainCompile