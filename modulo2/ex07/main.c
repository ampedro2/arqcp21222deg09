#include <stdio.h>
#include "asm.h"

short s1=20, s2=5;

int main(void) {
    printf("crossSumBytes = %hd\n", crossSumBytes());
    return 0;
}
