#include <stdio.h>
#include "asm.h"

int main(void) {
	int * smaller;
	int smaller = sum_smaller(3, 4, smaller);
	printf("sum_smaller = %d\n", smaller);
	return 0;
}
