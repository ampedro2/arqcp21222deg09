main: main.o vec_sum.o vec_avg.o
	gcc main.o vec_sum.o vec_avg.o -o main
main.o: main.c vec_sum.h vec_avg.h
	gcc -Wall -g -c main.c -o main.o
vec_sum.o: vec_sum.s
	gcc -Wall -g -c vec_sum.s -o vec_sum.o
vec_avg.o: vec_avg.s
	gcc -Wall -g -c vec_avg.s -o vec_avg.o
run: main
	gdb -tui main
clean:
	rm ∗ . o main

