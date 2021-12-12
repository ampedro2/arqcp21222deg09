
main: main.o vec_greater20.o

	gcc main.o vec_greater20.o -o main
	
main.o: main.c vec_greater20.h

	gcc -Wall -g -c main.c -o main.o
	
vec_greater20.o: vec_greater20.s

	gcc -Wall -g -c vec_greater20.s -o vec_greater20.o
	
run: main
	./main
	
clean:
	rm *.o main
