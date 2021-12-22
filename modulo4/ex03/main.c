#include <stdio.h>
#include "asm.h"

int main(void) {
	int great = greatest(3, 4, 2);
	printf("sum_n = %d\n", great);
	return 0;
}
