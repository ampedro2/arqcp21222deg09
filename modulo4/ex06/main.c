#include <stdio.h>
#include "asm.h"

int main(void) {
	char * a;
	char * b;
	int inc = test_equal(a, b);
	printf("test_equal = %d\n", inc);
	return 0;
}
