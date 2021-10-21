int string_to_int(char *str){
	
	int final=0;
	
	for (int i = 0; str[i] != '\0'; i++) {
		final = final * 10 + (str[i] - '0');
	}
	return final;
}
