int palindrome(char *str){
    int num_car = 0, i = 0;
    char aux1[50];
    if (*str == '\0') return 0;
    while (*(str + i) != '\0'){
		if ((*(str + i) >= 65 && *(str + i) <= 90) || (*(str + i) >= 97 && *(str + i) <= 122) || (*(str + i) >= 48 && *(str + i) <= 57)){
			*(aux1 + num_car) = *(str + i);
			num_car++;
		}
		i++;
	}
	for (int k = 0; k < num_car/2; k++){
		if (*(aux1 + k) != *(aux1 + num_car - k - 1) && *(aux1 + k) != *(aux1 + num_car - k- 1) + 32 && *(aux1 + k) != *(aux1 + num_car - k- 1) - 32){
			return 0;
		}
	}
	return 1;
}
