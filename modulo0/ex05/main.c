#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
	char num[50] = "12345";
	printf("%d\n", string_to_int(num));
	return 0;
}

