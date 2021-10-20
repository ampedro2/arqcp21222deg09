#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
	int vec[10] = {5,4,3,2,3,5,4,3,2,1};
	int value = 5;
	int n = 10;
	printf("%d\n", count(vec, n, value));
	return 0;
}
