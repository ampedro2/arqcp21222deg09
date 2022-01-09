#include <stdio.h>
#include "asm.h"

int main(void) {
	int vec[] = {1};
	int n = 1;
	printf("Result = %d\n", vec_count_bits_zero(&vec, n));
	return 0;
}

