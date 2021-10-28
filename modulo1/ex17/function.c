void swap(int* vec1, int* vec2, int size){
	int i = 0;
	int temp = 0;
	for(i=0;i<size;i++){
		temp=*(vec1+i);
		*(vec1+i)=*(vec2+i);
		*(vec2+i)=temp;
	}
}
