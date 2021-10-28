#include <stddef.h>

char* where_exists(char* str1, char* str2){
	int count = 0;
	int x=0;
	int i = 0;
	int num_car = 0;
	while(*(str1 + num_car)!='\0'){
		num_car++;
	}
	while(count!=num_car && *(str2 + i)!='\0'){
		if(count == 0) x = i;	
		
		if(*(str2 + i)==*(str1 + count)){
			count++;
		}
		else{
			count = 0;
		}
		i++;
	}
	if(count == num_car && *str1 != 0 && *str2 != 0) return (str2 + x);
	return NULL;
}
