#Makefile ex15

main: main.o activate.o

	gcc main.o activate.o -o main
	
main.o: main.c activate.h

	gcc -Wall -g -c main.c -o main.o
	
activate.o: activate.c

	gcc -Wall -g -c activate.c -o activate.o
	
run: main
	./main
	
clean:
	rm *.o main