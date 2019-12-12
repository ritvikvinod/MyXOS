integer main()
{
	integer pid;
	string command;
	command = "HI";
	while(command!="exit") do
		print ("");
		print ("Shell > ");
		read (command);
		//print (command);
		
		if(command=="exit") then
			break;
		endif;
		if(command=="about") then
			print("Anshul's Shell");
			continue;
		endif;
		
		pid = Fork();
		breakpoint;
		 //print(pid);
		
		if(pid!=-2) then 
			//print ("cal wait");
			pid = Wait(pid);
		endif;
		//print ("pst wai");
		
		if(pid==-2) then
			// print("insideChild");
			pid = Exec(command);
			//print (pid);
			if(pid==-1) then
				print("command");
				print("not Found");
				Exit();
			endif;
		endif;
	endwhile;
	
	return 0;
}
