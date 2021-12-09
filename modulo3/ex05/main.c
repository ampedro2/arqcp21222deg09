#include <stdio.h>
#include "vec_sum.h"
#include "vec_avg.h"

int vec[] = {1,2,3,4,5,6,7,8,587};
int * ptrvec = vec;
int num = 9;

int main(void) {
	printf("vec_sum = %d\n", vec_sum());
	printf("vec_avg = %d\n", vec_avg());
	return 0;
}