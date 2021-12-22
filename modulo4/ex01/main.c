#include <stdio.h>
#include "asm.h"

int main(void) {
	int ncube = cube(3);
	printf("cube = %d\n", ncube);
	return 0;
}
