#include <stdio.h>
#include "test_even.h"
#include "vec_sum_even.h"

int vec[] = {1,2,3,4,5,6,7,8,587};
int * ptrvec = vec;
int num = 9;
long even = 0;

int main(void) {
	printf("vec_sum_even = %d\n", vec_sum_even());
	return 0;
}
