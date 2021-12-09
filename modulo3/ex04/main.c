#include <stdio.h>
#include "asm.h"

long vec[] = {1,2,3,4,5,6,7,8,587};
long * ptrvec = vec;
int num = 9;

int main(void) {
	vec_add_one();
	for (int i = 0; i < num; i++){
		printf("vec[%d] = %ld\n", i, *(ptrvec + i));
	}
	
	return 0;
}
