#include <stdio.h>
#include "asm.h"

int A, B, C, D;

int main(void) {
    scanf("%d",&A);
    scanf("%d",&B);
    scanf("%d",&C);
    scanf("%d",&D);
    printf("compute = %d\n", compute());
    return 0;
}
