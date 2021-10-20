#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
    int vec1[10] = {1,2,3,4,5,6,7,8,9,10};
    int num = 10;
    printf("%d\n", sum_even(vec1, num));
    return 0;
}
