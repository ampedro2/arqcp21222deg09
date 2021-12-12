#include <stdio.h>
#include "asm.h"

char vec1[] = "ola";
char vec2[] = "ade";
char * ptr1 = vec1;
char * ptr2 = vec2;
int num = 3;

int main(void) {
	swap();
	printf("String 1: %s\nString 2: %s\n", vec1, vec2);
	
	return 0;
}
