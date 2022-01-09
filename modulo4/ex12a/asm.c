#include <stdio.h>

int count_bits_zero(int x){
	char res_and;
	int count = 0;
	for (int i = 0; i < 32; i++){
		res_and = x & 1;
		if (res_and == 0){
			count++;
		}
		x = x >> 1;
	}
	return count;
}
