#include <stdio.h>
#include "frequencies.h"

char vec [] = {2,1,0};
char *ptrgrades = vec;
int vec1 [] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
int *ptrfreq = vec1;
short num = 3;

int main(void){
	frequencies();
    for(int i = 0; i < 21; i++){
        printf("Nota: %d - Quantidade: %d\n", i, *(ptrfreq+i));   
    }

    return 0;
    

}