main: main.o calcula_resto.o noves_fora.o
	gcc main.o calcula_resto.o noves_fora.o -o main
main.o: main.c calcula_resto.h noves_fora.h
	gcc -Wall -g -c main.c -o main.o
calcula_resto.o: calcula_resto.s
	gcc -Wall -g -c calcula_resto.s -o calcula_resto.o
noves_fora.o: noves_fora.c
	gcc -Wall -g -c noves_fora.c -o noves_fora.o
run: main
	./main
clean:
	rm ∗ . o main