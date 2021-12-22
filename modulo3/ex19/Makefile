#Makefile ex19
main: main.o frequencies.o
	gcc main.o frequencies.o -o main
main.o: main.c frequencies.h
	gcc -Wall -g -c main.c -o main.o
frequencies.o: frequencies.s
	gcc -Wall -g -c frequencies.s -o frequencies.o
run: main
	./main
clean:
	rm *.o main