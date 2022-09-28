USE ЛР12;
go

CREATE procedure PSUBJECT
as begin
	DECLARE @n int = (SELECT count(*) from SUBJECT);
	SELECT SUBJECT [КОД], SUBJECT_NAME [ДИСЦИПЛИНА], PULPIT [КАФЕДРА] from SUBJECT;
	return @n;
end;

DECLARE @k int;
EXEC @k = PSUBJECT; -- вызов процедуры 
print 'Количество предметов: ' + cast(@k as varchar(3));
go
--DROP procedure PSUBJECT;