#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
    int x = 15;
    int y = 3;
    int *ptr = &x;
    power_ref(ptr, y);
    printf("%d\n", x);
    return 0;
}
