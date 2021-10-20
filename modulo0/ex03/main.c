#include <stdio.h>
#include "function.h"

int main(int argc, char **argv)
{
	int i, sum = 0;
	float average;
    int array[30];
    fill_array(array);
    for (i = 0; i < 30; i++){
		sum += array[i];
	}
	average = sum/30.0;
	printf("Media = %.2f\n", average);
    return 0;
} 


