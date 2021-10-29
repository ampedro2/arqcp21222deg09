void find_all_words(char* str, char* word, char** addrs){
	int count = 0;
	int x=0;
	int n = 0;
	int i = 0;
	int num_car = 0;
	while(*(word + num_car)!='\0'){
		num_car++;
	}
	while(*(str + i)!='\0'){
		if(count == 0) x = i;	
		
		if(*(str + i)==*(word + count) || *(str + i)+32==*(word + count) || *(str + i)==*(word + count)-32){
			count++;
		}
		else{
			count = 0;
		}
		if(count == num_car){
			*(addrs + n) = str + x;
			n++;
			count = 0;
		}
		i++;
	}
}
