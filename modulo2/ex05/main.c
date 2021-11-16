#include <stdio.h>
#include "asm.h"

short s=0;

int main(void) {
	printf("Valor s:");
	scanf("%hd",&s);
	printf("swapBytes = %hd\n", swapBytes(),swapBytes());
	return 0;
}
