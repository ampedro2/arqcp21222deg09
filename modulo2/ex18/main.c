#include <stdio.h>
#include "asm.h"

int n, i = 1;

int main(void) {
    scanf("%d", &n);
    printf("Sum: %d\n", loop_sum());
    return 0;
}
