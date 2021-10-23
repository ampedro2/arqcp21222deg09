int where_is (char *str, char c, int *p){
    int i = 0;
    int num_times = 0;
    while (*(str + i) != '\0'){
        if (*(str + i) == c){
            *(p + num_times) = i;
            num_times++;
        }
        i++;
    }
    return num_times;
}
