#include <stdio.h>
#include "vec_greater20.h"

int num = 8;
long ptr [] = {22,19,3,4,5,6,45,32};
long *ptrvec = ptr;
int i;

int main(void){

    int n = vec_greater20();

    printf("Vetor:\n");
    for(i = 0; i < num; i++){
        printf("%ld\n", *(ptrvec+i));   
    }

    printf("\n");
	printf("Número de elementos maiores que 20: %d\n",n);

    return 0;
    

}
