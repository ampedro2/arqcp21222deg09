int count_words(char *str){

    int num_words=0;

    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] == ' ' || str[i+1] == '\0') num_words++;
    }
    return num_words;
}
