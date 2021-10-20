int integer_part(char *str){
	
	int final=0;
	int i = 0;
	
	while(str[i] != '.') {
		final = final * 10 + (str[i] - '0');
		i++;
	}
	return final;
}

int fractional_part(char *str){
	
	int final=0;
	int x = 0;
	
	while (str[x] != '.') {
		x++;
	}
	x++;
	for (int i=x; str[i] != '\0'; i++) {
		final = final * 10 + (str[i] - '0');
	}
	return final;
}
