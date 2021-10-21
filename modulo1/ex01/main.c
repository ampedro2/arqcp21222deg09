#include <stdio.h>

int main(int argc, char *argv)
{
    int x = 5;
    int xPtr = &x;
    float y = *xPtr + 3;
    int vec[] = {10, 11, 12, 13};
    printf("Value of x = %d\n", x);
    printf("Value of y = %.2f\n", y);
    printf("Value of x = %p\n", &x);
    printf("Value of xPtr = %p\n", &xPtr);
    printf("Value pointed in xPtr = %hhd\n", *xPtr);
    printf("Value of vec[0] vec[1] vec[2] vec[3] = %d %d %d %d\n", vec[0], vec[1], vec[2], vec[3]);
    printf("Value address of vec[0] vec[1] vec[2] vec[3] = %p %p %p %p\n", &vec[0], &vec[1], &vec[2], &vec[3]);
    return 0;
}

