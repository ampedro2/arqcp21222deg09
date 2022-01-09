int activate_bits(int a, int left, int right){
	int mascara = 0;
    for (int i = 0; i < 32; i++){
		if ((i>left) || (i<right)){
			mascara = mascara | 1<<i;
		}
    }
	a = a | mascara;
   
    return a;
}
