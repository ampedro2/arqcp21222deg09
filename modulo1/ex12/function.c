void capitalize (char * str){
    int i = 1;
    while (*(str + i + 1) != '\0'){
        if (*(str + i) == ' ' && *(str + i + 1) >= 97 && *(str + i + 1) <= 122){
            *(str + i + 1) -= 32;
        }
        i++;
    }
}
