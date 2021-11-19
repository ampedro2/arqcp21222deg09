#include <stdio.h>
#include "asm.h"

long num;

int main(void) {
    scanf("%ld",&num);
    printf("steps = %d\n", steps());
    return 0;
}
