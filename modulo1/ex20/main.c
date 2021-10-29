#include <stdio.h>
#include "function.h"

int main(int argc, char **argv){
	
	char* str1 = "x";
	char* str2 = "rxaaXaaaXaaaaX";
	char* addrs[20];
	find_all_words(str2, str1, addrs);
}

