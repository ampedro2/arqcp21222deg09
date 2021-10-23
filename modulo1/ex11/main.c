#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
    char str[50] = "Gateman sees name, garageman sees name tag.";
    printf("%d\n", palindrome(str));
    return 0;
}
