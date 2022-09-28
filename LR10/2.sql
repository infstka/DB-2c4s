USE ЛР10;

DECLARE Puls CURSOR LOCAL
	for SELECT PULPIT, FACULTY from PULPIT;
DECLARE @pul nvarchar(10),
		@fac nvarchar(4);      
OPEN Puls; 	  
	fetch  Puls into @pul, @fac; 	
    print rtrim(@pul)+' (local) на факультете  '+ @fac;


DECLARE Puls CURSOR GLOBAL
	for SELECT PULPIT, FACULTY from PULPIT;
DECLARE @pul1 nvarchar(10),
		@fac1 nvarchar(4);      
OPEN Puls;	  
	fetch  Puls into @pul1, @fac1; 	
    print rtrim(@pul1)+' (global) на факультете  '+ @fac1;
 
CLOSE Puls;
deallocate Puls;