#include <stdio.h>
#include "asm.h"

int main(void) {
	int a = 8;
	int b = 4;
	int res = calculate(a, b);
	printf("Result = %d", res);
	return 0;
}

void print_result(char op, int o1, int o2, int res)
{
	printf("%d %c %d = %d\n", o1, op, o2, res);
}
