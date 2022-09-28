USE ЛР10;

INSERT FACULTY(FACULTY,FACULTY_NAME) VALUES (N'FIT',N'Факультет IT'); 

DECLARE cur CURSOR LOCAL SCROLL DYNAMIC
	for select f.FACULTY from FACULTY f 
	FOR UPDATE; 

DECLARE @s nvarchar(5); 
OPEN cur 
	fetch FIRST from cur into @s; 
	update FACULTY set FACULTY = N'myFIT' where current of cur; 
	fetch FIRST from cur into @s; 
	delete FACULTY where current of cur; 
GO 