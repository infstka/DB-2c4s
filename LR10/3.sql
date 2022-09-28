USE ЛР10;

DECLARE Studs CURSOR Local STATIC
	for SELECT NAME from STUDENT
	where IDGROUP = 3;		
		   
OPEN Studs;
print 'Кол-во строк : '+cast(@@CURSOR_ROWS as varchar(5)); 

DECLARE @name char(50);  
UPDATE STUDENT set IDGROUP=24 where IDGROUP=3;  
fetch  Studs into @name;     
while @@fetch_status = 0                                    
begin 
   print @name + ' ';      
   fetch Studs into @name; 
end;      
CLOSE  Studs;


UPDATE STUDENT set IDGROUP=3 where IDGROUP=24;
DEALLOCATE Studs 