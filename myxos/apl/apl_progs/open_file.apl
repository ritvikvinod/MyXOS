decl
	integer status,a,status1,status2,status3,status4,status5,status6;
	string b;
enddecl
integer main()
{
	a=Create("myfile.dat");
	status = Open("myfile.dat");
	//print(status);
	status2 = Write(status,"some");
	status2 = Write(status,"\0");
	status1 = Close(status);
	//print(status1);
	//status2 = Delete("myfile.dat");
	//print(status2);
	return 0;
}
