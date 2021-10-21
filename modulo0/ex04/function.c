int count(int *vec, int n, int value){
	int cont = 0;
	int i;
	for (i = 0; i < n; i++){
		if (vec[i] == value) cont++;
	}
	return cont;
}
