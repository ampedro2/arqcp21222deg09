#include <stdio.h>
#include "asm.h"

int main(void) {
	int * smaller;
	printf("sum_smaller = %d\n", sum_smaller(3, 4, smaller));
	return 0;
}
