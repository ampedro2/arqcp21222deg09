#include <stdio.h>
#include "asm.h"

int main(void) {
	int a = 8;
	int bb = 4;
	int *b = &bb;
	int c = 6;
	int res = calc(a, b, c);
	printf("calc = %d\n", res);
	return 0;
}
