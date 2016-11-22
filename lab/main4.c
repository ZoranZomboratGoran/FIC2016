int absdiff2(int x, int y){
	return x<y?y-x:x-y;
}

int cmovdiff(int x, int y){
	int tval=y-x;
	int rval=x-y;
	int test=x<y;
	if (test) rval=tval;
	
	return rval;
}

int lcount=0;

int absdiff3(int x, int y){
	return x<y?(lcount=10, y-x):(lcount=20,x-y);
}
