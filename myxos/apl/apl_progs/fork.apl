integer main()
{
	integer pid,p;
	pid=Fork();
	if(pid!=-2) then
		p=Exec("odd.xsm");
	endif;
	if(pid==-2) then
		p=Wait(0);
		p=Exec("even.xsm");
	endif;
	return 0;
}
