#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
    char str[50] = "isto e um exemplo";
    int res = count_words(str);
    printf("%d\n", res);
    return 0;
}

