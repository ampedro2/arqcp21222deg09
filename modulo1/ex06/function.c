void power_ref(int *x, int y){
	int i;
	int temp = *x;
	if (y == 0) *x = 1;
	else if (y < 0) *x = 0;
	else{
		for (i = 0; i < y-1; i++){
			*x *= temp;
		}
	}
}
