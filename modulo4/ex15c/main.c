#include <stdio.h>
#include "asm.h"

int main(void) {
	printf("Result = %d\n", activate_invert_bits(0, 31, 0));
	return 0;
}

