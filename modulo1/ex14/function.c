void frequencies(float *grades, int n, int *freq){
    int i;
    for (i = 0; i < n; i++){
        *(freq + (int)*(grades + i)) += 1;
    }
}
