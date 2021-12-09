#include <stdio.h>
#include "asm.h"

char str1[] = "eu Vou trocar os vs pelos bs";
char * ptr1 = str1;
char str2[] = "";
char * ptr2 = str2;

int main(void) {
	str_copy_porto2();
	printf("str_copy_porto = %s\n", ptr2);
	return 0;
}
