integer main()
{
	integer k,pid,a,b,c,d,e,f,g,h,i,p,par;
	k=10;
	a=Fork();
	if(a==-2) then
		k=k+20;
		b=Exec("print.xsm");
		print (k);
	endif;
	b=Wait(a);
	c=Fork();
	e=Fork();
	pid=Getpid();
	par=Getppid();
	if(c==-2 || d==-2) then
		f=Wait(Getppid());
	endif;
	g=Wait(par);
	print (pid);
	i=Signal();
	return 0;
}
