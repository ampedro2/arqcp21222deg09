#include <stdio.h>
#include "asm.h"

int int1, int2;

int main(void) {
    scanf("%d",&int1);
    scanf("%d",&int2);
    sum();
    printf("sum = %d\n", result);
    subtraction();
    printf("subtraction = %d\n", result);
    multiplication();
    printf("multiplication = %d\n", result);
    division();
    printf("division = %d\n", result);
    modulus();
    printf("modulus = %d\n", result);
    power2();
    printf("power2 = %d\n", result);
    power3();
    printf("power3 = %d\n", result);
    return 0;
}
