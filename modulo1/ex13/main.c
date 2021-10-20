#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
    char str[50] = "abcdaebfbgha";
    char c = 'a';
    int vec[50];
    int i;
    int n = where_is(str, c, vec);
    for (i = 0; i < n; i++){
        printf("%d ", *(vec + i));
    }
    printf("\n");
    return 0;
}
