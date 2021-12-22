#include <stdio.h>
#include "asm.h"

short vec[] = {1000};
short * ptrvec = vec;
int num = 1;

int main(void) {
	int num_of_changes = vec_zero();
	printf("Number of changes: %d\n", num_of_changes);
	
	return 0;
}
