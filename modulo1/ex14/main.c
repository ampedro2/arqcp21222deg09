#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
    float grades[11] = {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0, 12.67, 16.23, 18.75};
    int n = 11;
    int freq[21] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    frequencies(grades, n, freq);
    for (int i = 0; i < 21; i++){
        printf("%d ", *(freq + i));
    }
    printf("\n");
    return 0;
}
