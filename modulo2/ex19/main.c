#include <stdio.h>
#include "asm.h"

short current, desired;

int main(void) {
    printf("Current temperature: ");
    scanf("%hd", &current);
    printf("Desire temperature: ");
    scanf("%hd", &desired);
    printf("Result: %d\n", needed_time());
    return 0;
}
