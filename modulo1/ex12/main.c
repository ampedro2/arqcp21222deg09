
#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
    char str[50] = "The maximum value of this CYCLE";
    capitalize(str);
    printf("%s\n", str);
    return 0;
}
