decl
	integer primenumber(integer i);
enddecl

integer primenumber(integer i) {
	integer j,k;
	k=2;
	while(k<i) do
		if(i%k==0) then
			j=0;
			break;
		endif;
		k=k+1;
	endwhile;
	if(k==i) then
		j=1;
	endif;
	return j;
}

integer main() {
	integer n,i,r;
	print("Enter n: ");
	read(n);
	i=2;
	while(i<n) do
			r=primenumber(i);
			if(r==1) then
				print(i);
			endif;
			i=i+1;
	endwhile;
	return 0;
}
