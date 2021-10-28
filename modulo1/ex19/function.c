#include <stddef.h>

char* find_word(char* initial_addr, char* word){
	int count = 0;
	int x=0;
	int i = 0;
	int num_car = 0;
	while(*(word + num_car)!='\0'){
		num_car++;
	}
	while(count!=num_car && *(initial_addr + i)!='\0'){
		if(count == 0) x = i;	
		
		if(*(initial_addr + i)==*(word + count) || *(initial_addr + i)+32==*(word + count) || *(initial_addr + i)==*(word + count)-32){
			count++;
		}
		else{
			count = 0;
		}
		i++;
	}
	if(count == num_car && *word != 0 && *initial_addr != 0) return (initial_addr + x);
	return NULL;
}
