int odd_sum(int *p){
    int i;
    int sum = 0;
    for (i = 1; i < *p; i++){
        if (*(p + i)%2 != 0){
            sum += *(p + i);
        }
    }
    return sum;
}
