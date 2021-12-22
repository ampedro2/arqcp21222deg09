#include <stdio.h>
#include "asm.h"

int main(void) {
	short vector[] = {1,2,3,4,5,6,7,8}
	short * vec = vector;
	int num = 8;
	int even = count_even(vec, num);
	printf("count_even = %d\n", even);
	return 0;
}
