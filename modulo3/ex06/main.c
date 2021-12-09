#include <stdio.h>
#include "asm.h"

char vec[] = "olaaaa";
char * ptr1 = vec;
int main(void) {
	printf("String encriptada: %s\nNumero de alteracoes: %d\n", ptr1, encrypt());
	
	return 0;
}
