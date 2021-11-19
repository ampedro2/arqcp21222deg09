#include <stdio.h>
#include "asm.h"

short s1=10, s2=20;

int main(void) {
    printf("crossSumBytes = %hd\n", crossSumBytes());
    return 0;
}
