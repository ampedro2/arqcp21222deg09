#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
    char str[50] = "EsTa strINg e um Teste.";
    upper1(str);
    printf("%s\n", str);
    return 0;
}
