#include <stdio.h>
#include "asm.h"

int vec1[] = {10,0,1};
int * ptrsrc = vec1;
int num = 3;
int vec2[];
int * ptrdest = vec2;


int main(void) {
	int number_of_elements = sort_without_reps();
	printf("Number of elements added: %d\n", number_of_elements);
	for (int i = 0; i < number_of_elements; i++){
		printf("%d\n", *(vec2 + i));
	}
	return 0;
}
