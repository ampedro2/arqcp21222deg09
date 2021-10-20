int palindrome(char *str){
    int i = 0, j;
    while (*(str + i) != '\0' && *(str + i) != '.'){
        i++;
    }
    for (j = 0; j < i-1; j++){
        if (*(str + j) == ' '){
            if (*(str + j + 1) != *(str + i - j - 1) && *(str + j + 1) != *(str + i - j - 1) - 32 && *(str + j + 1) != *(str + i - j - 1) + 32){
                return 0;
            }
            j++;
            i++;
        }
        else if (*(str + i - j - 1) == ' '){
            if (*(str + j) != *(str + i - j - 2) && *(str + j) != *(str + i - j - 2) - 32 && *(str + j) != *(str + i - j - 2) + 32){
                return 0;
            }
            i--;
            j--;
        }
        else if (*(str + j) != *(str + i - j - 1) && *(str + j) != *(str + i - j - 1) - 32 && *(str + j + 1) != *(str + i - j - 1) + 32){
            return 0;
        }
    }
    return 1;
}
