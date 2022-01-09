#include <stdio.h>
#include "asm.h"

int main(void) {
	int num = 12;
	int *ptr;
	ptr = &num;
	int pos = 5;
	activate_2bits(ptr, pos);
	return 0;
}

