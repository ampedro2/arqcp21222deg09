#include <stdio.h>
#include "asm.h"

char strfinal [] = "";
char * ptr3 = strfinal;
char strinicio[40] = "ola";
char strfim[40] = "adeus";
char * ptr1 = strinicio;
char * ptr2 = strfim;

int main(void) {
	str_cat();
	printf("String final: %s\n", ptr3);
	
	return 0;
}
