decl
	integer i,a,b,c,d,fd1,fd2,fd3;
	string b1,b2;
enddecl
integer main()
{
	a=Create("oddno.dat");
	fd1=Open("oddno.dat");
	i=1;
	while(i<20) do
		a=Write(fd1,i);
		i=i+2;
	endwhile;
	
	a=Create("evenno.dat");
	fd2=Open("evenno.dat");
	i=2;
	while(i<21) do
		a=Write(fd2,i);
		i=i+2;
	endwhile;
	
	a=Create("merged.dat");
	fd3=Open("merged.dat");
	a=Seek(fd1,0);
	b=Seek(fd2,0);
	
	i=1;
	while(i<20) do
		a=Read(fd1,b1);
		print(b1);
		b=Write(fd3,b1);
		
		c=Read(fd2,b2);
		print(b2);
		d=Write(fd3,b2);
		
		i=i+2;
	endwhile;

	a=Close(fd1);
	a=Close(fd2);
	a=Close(fd3);	
	return 0;
}
