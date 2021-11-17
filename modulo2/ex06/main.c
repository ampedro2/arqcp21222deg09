#include <stdio.h>
#include "asm.h"
char byte1='a', byte2='b';

int main(void) {
    printf("concatBytes = %hd\n", concatBytes());
    return 0;
}
