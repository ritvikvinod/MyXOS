integer main()
{
	integer desr1;
	integer desr2;
    integer desr3;

   integer data1;
    integer data2;
    //string data1;
    //string data2;

    integer status1;
    integer status2;
    
    status1 = Create("myfile1.dat");
    status1 = Create("myfile2.dat");
    status1 = Create("final.dat");



	desr1 = Open("myfile1.dat");
	desr2 = Open("myfile2.dat");
	desr3 = Open("final.dat");

    status1 = Write(desr1,1);
    status1 = Write(desr1,3);
    status1 = Write(desr1,5);
    status1 = Write(desr1,7);
    status1 = Write(desr1,9);
    status1 = Write(desr1,-1);   
 
 	status1 = Write(desr2,2);
 	status1 = Write(desr2,4);
 	status1 = Write(desr2,6);
	status1 = Write(desr2,-1);
    status1 = Seek(desr1,0);
    status1 = Seek(desr2,0);
    status1 = Read(desr1,data1);
    status2 = Read(desr2,data2);
    if(status1 != -1 && status2 != -1) then
    	while(data1 != -1 && data2 != -1) do
    		if(data1 <= data2) then
    			status1 = Write(desr3,data1);
    			status1 = Read(desr1,data1);
    			
    		endif;
    		if(data1 > data2) then
            	status1 = Write(desr3,data2);
            	status1 = Read(desr2,data2);
            	
            endif;

 			
 		endwhile;

 		if(data1 != -1) then
 			while(data1 != -1) do
 				status1 = Write(desr3,data1);
 				status1 = Read(desr1,data1);
 			endwhile;
 		endif;

 		if(data2 != -1) then
 			while(data2 != -1) do
 				status1 = Write(desr3,data2);
 				status1 = Read(desr2,data2);
 			endwhile;
 		endif;

 	endif;

 	status1 = Close(desr1);
 	status1 = Read(desr1,data1);
 	print(status1);

	return 0;
}
