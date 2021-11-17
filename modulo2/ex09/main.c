#include <stdio.h>
#include "asm.h"
char A;
short B;
int C;
int D;
int main(void) {
    printf("sum_and_subtract = %ld\n", sum_and_subtract());
    return 0;
}
