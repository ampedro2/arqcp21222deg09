#Makefile ex15

main: main.o sum_first_byte.o

	gcc main.o sum_first_byte.o -o main
	
main.o: main.c sum_first_byte.h

	gcc -Wall -g -c main.c -o main.o
	
sum_first_byte.o: sum_first_byte.s

	gcc -Wall -g -c sum_first_byte.s -o sum_first_byte.o
	
run: main
	./main
	
clean:
	rm *.o main
