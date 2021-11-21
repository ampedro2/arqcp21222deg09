#include <stdio.h>
#include "asm.h"

int num;

int main(void) {
    printf("Number: ");
    scanf("%d", &num);
    printf("Result: %d\n", check_num());
    return 0;
}
