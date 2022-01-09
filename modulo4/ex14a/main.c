#include <stdio.h>
#include "asm.h"

int main(void) {
	printf("Result left = %d\n", rotate_left(12, 3));
	printf("Result right = %d\n", rotate_right(12, 3));
	return 0;
}

