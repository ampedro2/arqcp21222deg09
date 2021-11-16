int sort_without_reps(int *src, int n, int *dest){
    int i, j;
    int temp;
    int num_elements = 0;
    for (i = 0; i < n-1; i++){
        for (j = 0; j < n-i-1; j++){
            if (*(src + j) < *(src + j + 1)){
                temp = *(src + j);
                *(src + j) = *(src + j + 1);
                *(src + j + 1) = temp;
            }
        }
    }
    for (i = 0; i < n; i++){
        if ( i == 0){
            *(dest + num_elements) = *(src + i);
            num_elements++;
        }
        else if (i == ( n - 1) && *(src + i) != *(src + i - 1)){
            *(dest + num_elements) = *(src + i);
            num_elements++;
        }
        else if (*(src + i) != *(src + i - 1)){
            *(dest + num_elements) = *(src + i);
            num_elements++;
        }
    }
    return num_elements;
}
