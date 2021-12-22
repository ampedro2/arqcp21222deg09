#include <stdio.h>
#include "asm.h"

int main(void) {
	int * v1;
	int inc = inc_and_square(v1, 2);
	printf("inc_and_square = %d\n", inc);
	return 0;
}
