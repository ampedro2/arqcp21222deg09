#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
	char str1[50];
	char str2[50];
	scanf("%s", &str1[0]);
	scanf("%s", &str2[0]);
	int res1 = string_to_int(str1);
	int res2 = string_to_int(str2);
	printf("%d %d\n", res1, res2);
	float media = (res1 + res2)/2.0;
	printf("%.2f\n", media);
	return 0;
}

