main: main.o test_even.o vec_sum_even.o
	gcc main.o test_even.o vec_sum_even.o -o main
main.o: main.c test_even.h vec_sum_even.h
	gcc -Wall -g -c main.c -o main.o
test_even.o: test_even.s
	gcc -Wall -g -c test_even.s -o test_even.o
vec_sum_even.o: vec_sum_even.s
	gcc -Wall -g -c vec_sum_even.s -o vec_sum_even.o
run: main
	gdb -tui main
clean:
	rm ∗ . o main

