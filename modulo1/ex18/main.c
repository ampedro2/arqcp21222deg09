#include <stdio.h>
#include "function.h"

int main(int argc, char **argv){
	
	short shorts[10] = {1,2,3,4,5,6,7,8,9,0};
	int n_shorts = 10;
	int integers[10];
	compress_shorts(shorts, n_shorts, integers);
}
