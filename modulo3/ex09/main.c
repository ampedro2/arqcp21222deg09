#include <stdio.h>
#include "asm.h"

short vec[] = {7, 7, 9, 10, 2};
short *ptrvec = vec;
int num = 5;
short x = 0;
int main(void) {
	
	printf("Vetor Antigo:\n");
	for(int i=0; i<5; i++){
		printf("%d\n", *(ptrvec+i));
	}
	
	short* n = vec_search();
	
	printf("%hu\n",n);
	return 0;
}
