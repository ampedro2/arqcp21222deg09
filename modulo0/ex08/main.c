#include <stdio.h>
#include "functions.h"

int main(int argc, char **argv)
{
	char str[50] = "123.456";
	int x_int = integer_part(str);
	int x_frac = fractional_part(str);
	printf("%d\n%d\n", x_int, x_frac);
	return 0;
}

