#include <stdio.h>

int rotate_left(int num, int nbits){
	num = num << nbits | num >> (32 - nbits);
	return num;
}

int rotate_right(int num, int nbits){
	num = num >> nbits | num << (32 - nbits);
	return num;
}
