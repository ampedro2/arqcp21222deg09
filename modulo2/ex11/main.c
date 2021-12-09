#include <stdio.h>
#include "asm.h"

int op1=1, op2=1;

int main(void) {
    printf("test_flags = %c\n", test_flags());
    return 0;
}
