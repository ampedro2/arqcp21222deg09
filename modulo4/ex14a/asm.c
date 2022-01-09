#include <stdio.h>

int activate_bit(int *ptr, int pos){
	int num = *(ptr);
	*(ptr) = *(ptr) | 1<<pos;
	if (*(ptr) == num){
		return 0;
	}
	else{
		return 1;
	}
}
