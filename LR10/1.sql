USE ЛР10;

DECLARE Subs CURSOR
	for SELECT SUBJECT from SUBJECT
	where SUBJECT.PULPIT='ИСиТ'; 

DECLARE @sub char(4),
		@str char(100)=' '; 
OPEN Subs;  
	fetch  Subs into @sub;    
	print   'Дисциплины на кафедре ИСиТ:';   
	while @@fetch_status = 0                                   
	begin 
		set @str = rtrim(@sub)+', '+@str; -- удаляет все завершающие пробелы        
		fetch  Subs into @sub; 
	end;   
    print @str;        
CLOSE  Subs;
deallocate Subs; 