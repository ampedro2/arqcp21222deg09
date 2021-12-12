main: main.o exists.o vec_diff.o
	gcc main.o exists.o vec_diff.o -o main
main.o: main.c exists.h vec_diff.h
	gcc -Wall -g -c main.c -o main.o
exists.o: exists.s
	gcc -Wall -g -c exists.s -o exists.o
vec_diff.o: vec_diff.s
	gcc -Wall -g -c vec_diff.s -o vec_diff.o
run: main
	gdb -tui main
clean:
	rm ∗ . o main



