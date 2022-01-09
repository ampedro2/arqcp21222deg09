#include <stdio.h>
#include "activate.h"

int main (){

    int a = 5;
    int left = 25;
    int right = 5;

    printf("Result= %d\n", activate_bits(a, left, right));

    return 0;

}
