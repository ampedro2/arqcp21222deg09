#include <stdio.h>
#include "keep_positives.h"

short num = 8;
int ptr [] = {-22,0,3,-4,5,6,45,32};
int *ptrvec = ptr;
short i;

int main(void){
	
    printf("Array:\n");
    for(i = 0; i < num; i++){
        printf("%d\n", *(ptrvec+i));   
    }
	keep_positives();
	
	printf("\nNew array:\n");
    for(i = 0; i < num; i++){
        printf("%d\n", *(ptrvec+i));   
    }
    printf("\n");

    return 0;
    

}
