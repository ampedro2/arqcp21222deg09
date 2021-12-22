#include <stdio.h>
#include "sum_first_byte.h"

short num = 8;
int ptr [] = {-22,0,3,-4,5,6,45,32};
int *ptrvec = ptr;
int i;

int main(void){

    

    printf("Vetor:\n");
    for(i = 0; i < num; i++){
        printf("%d\n", *(ptrvec+i));   
    }
	int n = sum_first_byte();
	
	
    printf("N : %d\n", n);

    return 0;
    

}
