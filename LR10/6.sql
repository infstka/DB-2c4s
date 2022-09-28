USE ËÐ10;

DECLARE @name3 nvarchar(20), @n int;  

DECLARE Cur1 CURSOR LOCAL for 
SELECT NAME, NOTE from PROGRESS join STUDENT 
	on PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		where NOTE<5

OPEN Cur1;  
    fetch  Cur1 into @name3, @n;  
	while @@fetch_status = 0
	begin 		
		delete PROGRESS where CURRENT OF Cur1;	
		fetch  Cur1 into @name3, @n;  
	end
CLOSE Cur1;

SELECT NAME, NOTE from PROGRESS join STUDENT
	on PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		where NOTE<5
insert into PROGRESS (SUBJECT,IDSTUDENT,PDATE, NOTE)
    values 
           ('ÎÀèÏ', 1005,  '01.10.2013',4),
           ('ÑÓÁÄ', 1017,  '01.12.2013',4),
		   ('ÊÃ',   1018,  '06.5.2013',4),
           ('ÎÕ',   1065,  '01.1.2013',4),
           ('ÎÕ',   1069,  '01.1.2013',4),
           ('ÝÒ',   1058,  '01.1.2013',4)

-- óâåëèè÷òü îöåíêó íà åäèíèöó
DECLARE @name4 char(20), @n3 int;  

DECLARE Cur2 CURSOR LOCAL for 
SELECT NAME, NOTE from PROGRESS join STUDENT
	on PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		where PROGRESS.IDSTUDENT=1000
OPEN Cur2;  
    fetch  Cur2 into @name4, @n3; 
    UPDATE PROGRESS set NOTE=NOTE+1 where CURRENT OF Cur2;
CLOSE Cur2;

SELECT NAME, NOTE from PROGRESS join STUDENT
	on PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT 
		where PROGRESS.IDSTUDENT=1000