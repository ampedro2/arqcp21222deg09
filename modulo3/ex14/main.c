#include <stdio.h>
#include "exists.h"
#include "vec_diff.h"

short vec[] = {1,2,3,4,5,5,6};
short * ptrvec = vec;
int num = 1;
short x = 5;

int main(void) {
	int occurrency = exists();
	int number_oc = vec_diff();
	printf("Exists: %d | Number of occurrency: %d\n", occurrency, number_oc);
	
	return 0;
}
