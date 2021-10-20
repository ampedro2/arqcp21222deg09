#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
    char str[50] = "Never odd or even.";
    printf("%d\n", palindrome(str));
    return 0;
}
