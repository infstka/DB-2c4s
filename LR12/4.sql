USE ЛР12;
GO

CREATE procedure PAUDITORIUM_INSERT
		@a char(20),
		@n varchar(50),
		@c int = 0,
		@t char(10)
as begin 
begin try
	INSERT into AUDITORIUM(AUDITORIUM, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY, AUDITORIUM_NAME)
		values(@a, @n, @c, @t);
		--values(433-1, 'ЛК', 433-1, 100);
	return 1;
end try
begin catch
	print 'Номер ошибки: ' + cast(error_number() as varchar(6));
	print 'Сообщение: ' + error_message();
	print 'Уровень: ' + cast(error_severity() as varchar(6));
	print 'Метка: ' + cast(error_state() as varchar(8));
	print 'Номер строки: ' + cast(error_line() as varchar(8));
	if error_procedure() is not null   
	print 'Имя процедуры: ' + error_procedure();
	return -1;
end catch;
end;


DECLARE @rc int;  
EXEC @rc = PAUDITORIUM_INSERT @a = '420-3', @n = 'ЛК', @c = 100, @t = '420-3'; 
print 'Код ошибки: ' + cast(@rc as varchar(3));
go

delete AUDITORIUM where AUDITORIUM='420-3';