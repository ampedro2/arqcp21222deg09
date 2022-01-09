#include <stdio.h>
#include "asm.h"

int main(void) {
	int num = 12;
	int *ptr;
	ptr = &num;
	int pos = 5;
	printf("Result = %d\n", activate_bit(ptr, pos));
	return 0;
}

