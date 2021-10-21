#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
    int vec[10] = {3,1,7,5,6,9,4,2,10,7};
    int num = 10;
    array_sort2(vec, num);
    for (int i = 0; i < 10; i++){
        printf("%d ", *(vec + i));
    }
    printf("\n");
    return 0;
}
