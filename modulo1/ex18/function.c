void compress_shorts(short* shorts, int n_shorts, int* integers){
	int i = 0;
	short* aux = integers;
	
	for(i=0;i<n_shorts;i++){
		*(aux + i) = *(shorts + i);
	}
}
