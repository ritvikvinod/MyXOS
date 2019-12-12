decl
	integer status;
enddecl
integer main()
{
	status = Delete("oddno.dat");
	status = Delete("evenno.dat");
	status = Delete("merged.dat");
	print(status);
	return 0;
}
