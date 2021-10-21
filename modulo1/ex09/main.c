#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
    int vec1[10] = {3,1,1,5,7,9,4,2,10,3};
    int vec2[10];
    int num = 10;
    int num_elements = sort_without_reps(vec1, num, vec2);
    printf("%d\n", num_elements);
    for (int i = 0; i < num_elements; i++){
        printf("%d ", *(vec2 + i));
    }
    printf("\n");
    return 0;
}
