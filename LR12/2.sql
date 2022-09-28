USE ЛР12;
GO 

ALTER procedure PSUBJECT @p varchar(20), @c nvarchar(2) output
as begin
	SELECT * from SUBJECT where SUBJECT = @p;
	set @c = cast(@@rowcount as nvarchar(2));
end;

DECLARE @k1 int, @k2 nvarchar(2);
EXEC @k1 = PSUBJECT @p = 'СУБД', @c = @k2 output;
print 'Количество предметов: ' + @k2;
go
