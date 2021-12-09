#include <stdio.h>
#include "asm.h"

char str[] = "b";
char * ptr1 = str;

int main(void) {
	int number_of_zeros = zero_count();
	printf("zero_count = %d\n", number_of_zeros);
	return 0;
}
