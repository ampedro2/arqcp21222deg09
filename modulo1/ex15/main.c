#include <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"

int num_sets = 0;

int main(int argc, char **argv){
	int vec[100];
	int i;
	int num = 100;
	int limit = 20;
	populate( vec , num, limit);
	for (i = 0; i < num-2;i++){
		if (check(*(vec + i), *(vec + i + 1), *(vec + i + 2))) inc_nsets();
	}
	printf("%d\n", num_sets);
}
